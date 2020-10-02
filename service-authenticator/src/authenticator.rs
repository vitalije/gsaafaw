//! Module contianing the core functionality for OAuth2 Authentication.
use crate::error::Error;
use crate::service_account::{ServiceAccountFlow, ServiceAccountFlowOpts, ServiceAccountKey};
use crate::storage::{self, Storage};
use crate::types::AccessToken;
use actix_web::client as awc;
use futures::lock::Mutex;
use std::fmt;
use std::io;
use std::path::PathBuf;
/// Authenticator is responsible for fetching tokens, handling refreshing tokens,
/// and optionally persisting tokens to disk.
pub struct Authenticator {
  /// client field is public so that it may be used for sending requests
  /// with the authorization header built from the received token
  pub client: awc::Client,
  storage: Storage,
  auth_flow: ServiceAccountFlow,
}

impl Authenticator {
  /// Return the current token for the provided scopes.
  pub async fn token<'a, T>(
    &'a self,
    scopes: &'a [T],
  ) -> Result<AccessToken, Error>
  where
    T: AsRef<str>,
  {
    self.find_token(scopes, /* force_refresh = */ false).await
  }
  /// returns value for the `Authorization` header (Bearer <token value>)
  pub async fn header<'a, T>(
    self: &Self,
    scopes: &'a [T],
  ) -> Result<String, Error>
  where
    T: AsRef<str>,
  {
    let tok = self.token(scopes).await?;
    Ok(format!("Bearer {}", tok.as_str()))
  }
  /// Return a token for the provided scopes, but don't reuse cached tokens. Instead,
  /// always fetch a new token from the OAuth server.
  pub async fn force_refreshed_token<'a, T>(
    &'a self,
    scopes: &'a [T],
  ) -> Result<AccessToken, Error>
  where
    T: AsRef<str>,
  {
    self.find_token(scopes, /* force_refresh = */ true).await
  }
  /// Return a cached token or fetch a new one from the server.
  async fn find_token<'a, T>(
    &'a self,
    scopes: &'a [T],
    force_refresh: bool,
  ) -> Result<AccessToken, Error>
  where
    T: AsRef<str>,
  {
    log::debug!(
      "access token requested for scopes: {}",
      DisplayScopes(scopes)
    );
    let hashed_scopes = storage::ScopeSet::from(scopes);
    match self.storage.get(hashed_scopes).await {
      Some(t) if !t.is_expired() && !force_refresh => {
        // unexpired token found
        log::debug!("found valid token in cache: {:?}", t);
        Ok(t.into())
      }
      _ => {
        // no token in the cache or the token returned can't be refreshed.
        let token_info = self.auth_flow.token(&self.client, scopes).await?;
        self.storage.set(hashed_scopes, token_info.clone()).await?;
        Ok(token_info.into())
      }
    }
  }
}
struct DisplayScopes<'a, T>(&'a [T]);
impl<'a, T> fmt::Display for DisplayScopes<'a, T>
where
  T: AsRef<str>,
{
  fn fmt(
    &self,
    f: &mut fmt::Formatter,
  ) -> fmt::Result {
    f.write_str("[")?;
    let mut iter = self.0.iter();
    if let Some(first) = iter.next() {
      f.write_str(first.as_ref())?;
      for scope in iter {
        f.write_str(", ")?;
        f.write_str(scope.as_ref())?;
      }
    }
    f.write_str("]")
  }
}
/// Configure an Authenticator using the builder pattern.
pub struct AuthenticatorBuilder {
  client_builder: awc::ClientBuilder,
  storage_type: StorageType,
  auth_flow_opts: ServiceAccountFlowOpts,
}

impl AuthenticatorBuilder {
  async fn common_build(
    client_builder: awc::ClientBuilder,
    storage_type: StorageType,
    auth_flow_opts: ServiceAccountFlowOpts,
  ) -> io::Result<Authenticator> {
    let client = client_builder.finish();
    let storage = match storage_type {
      StorageType::Memory => Storage::Memory {
        tokens: Mutex::new(storage::JSONTokens::new()),
      },
      StorageType::Disk(path) => Storage::Disk(storage::DiskStorage::new(path).await?),
    };
    let auth_flow = ServiceAccountFlow::new(auth_flow_opts)?;
    Ok(Authenticator {
      client,
      storage,
      auth_flow,
    })
  }
  /// Use the provided client builder.
  pub fn client(
    self,
    client_builder: awc::ClientBuilder,
  ) -> AuthenticatorBuilder {
    AuthenticatorBuilder {
      client_builder: client_builder,
      storage_type: self.storage_type,
      auth_flow_opts: self.auth_flow_opts,
    }
  }
  /// Persist tokens to disk in the provided filename.
  pub fn persist_tokens_to_disk<P: Into<PathBuf>>(
    self,
    path: P,
  ) -> AuthenticatorBuilder {
    AuthenticatorBuilder {
      storage_type: StorageType::Disk(path.into()),
      ..self
    }
  }
  /// uses provided ServiceAccountKey and subject
  pub fn with_service_key(
    key: ServiceAccountKey,
    subject: &str,
  ) -> AuthenticatorBuilder {
    let auth_flow_opts = ServiceAccountFlowOpts {
      key,
      subject: Some(subject.to_string()),
    };
    AuthenticatorBuilder {
      client_builder: awc::ClientBuilder::new(),
      storage_type: StorageType::Memory,
      auth_flow_opts,
    }
  }
}
/// ## Methods available when building a service account authenticator.
/// ```
/// # async fn foo() {
/// # let service_account_key = yup_oauth2::read_service_account_key("/tmp/foo").await.unwrap();
///     let authenticator = yup_oauth2::ServiceAccountAuthenticator::builder(
///         service_account_key,
///     )
///     .subject("mysubject")
///     .build()
///     .await
///     .expect("failed to create authenticator");
/// # }
/// ```
impl AuthenticatorBuilder {
  /// Use the provided subject.
  pub fn subject(
    self,
    subject: impl Into<String>,
  ) -> Self {
    AuthenticatorBuilder {
      auth_flow_opts: ServiceAccountFlowOpts {
        subject: Some(subject.into()),
        ..self.auth_flow_opts
      },
      ..self
    }
  }

  /// Create the authenticator.
  pub async fn build(self) -> io::Result<Authenticator> {
    Self::common_build(self.client_builder, self.storage_type, self.auth_flow_opts).await
  }
}
enum StorageType {
  Memory,
  Disk(PathBuf),
}
