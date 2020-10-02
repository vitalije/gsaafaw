<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2"/>
<globals/>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="vitalije.20201002085218.3"><vh>@clean README.md</vh></v>
<v t="vitalije.20201002100805.1"><vh>Project meta</vh>
<v t="vitalije.20201002100855.1"><vh>@settings</vh>
<v t="vitalije.20201002100855.2"><vh>@data extract-patterns</vh></v>
</v>
<v t="vitalije.20201002100919.1"><vh>@button n-save @key=Ctrl-s</vh></v>
<v t="vitalije.20201002101045.1"><vh>@button toggle-camel @key=F11</vh></v>
<v t="vitalije.20201002085449.2"><vh>@clean Cargo.toml</vh></v>
<v t="vitalije.20201002085449.3"><vh>@edit .rustfmt.toml</vh></v>
<v t="vitalije.20201002095641.1"><vh>@edit .gitignore</vh></v>
</v>
<v t="vitalije.20201002085449.4"><vh>@path service-authenticator</vh>
<v t="vitalije.20201002085449.5"><vh>@clean Cargo.toml</vh></v>
<v t="vitalije.20201002085449.6"><vh>@clean src/lib.rs</vh></v>
<v t="vitalije.20201002092709.1"><vh>@clean src/authenticator.rs</vh>
<v t="vitalije.20201002092709.2"><vh>Authenticator</vh>
<v t="vitalije.20201002092709.3"><vh>async token</vh></v>
<v t="vitalije.20201002092709.4"><vh>async header</vh></v>
<v t="vitalije.20201002092709.5"><vh>async force_refreshed_token</vh></v>
<v t="vitalije.20201002092709.6"><vh>async find_token</vh></v>
</v>
<v t="vitalije.20201002092709.7"><vh>DisplayScopes</vh></v>
<v t="vitalije.20201002092709.8"><vh>AuthenticatorBuilder</vh>
<v t="vitalije.20201002092709.9"><vh>async common_build</vh></v>
<v t="vitalije.20201002092709.10"><vh>client</vh></v>
<v t="vitalije.20201002092709.11"><vh>perisist_tokens_to_disk</vh></v>
<v t="vitalije.20201002092709.12"><vh>with_service_key</vh></v>
</v>
<v t="vitalije.20201002092709.13"><vh>AuthenticatorBuilder</vh></v>
<v t="vitalije.20201002092709.14"><vh>StorageType</vh></v>
</v>
<v t="vitalije.20201002092722.1"><vh>@clean src/error.rs</vh>
<v t="vitalije.20201002092722.2"><vh>pub struct AuthError (error.rs)</vh></v>
<v t="vitalije.20201002092722.3"><vh>Display for AuthError</vh></v>
<v t="vitalije.20201002092722.4"><vh>impl StdError for AuthError (error.rs)</vh></v>
<v t="vitalije.20201002092722.5"><vh>pub enum AuthErrorCode (error.rs)</vh></v>
<v t="vitalije.20201002092722.6"><vh>impl AuthErrorCode (error.rs)</vh>
<v t="vitalije.20201002092722.7"><vh>pub fn as_str (error.rs)</vh></v>
<v t="vitalije.20201002092722.8"><vh>fn from_string (error.rs)</vh></v>
</v>
<v t="vitalije.20201002092722.9"><vh>impl From&lt;String&gt; for AuthErrorCode (error.rs)</vh></v>
<v t="vitalije.20201002092722.10"><vh>impl &lt;'a&gt; From&lt;&amp;'a str&gt; for AuthErrorCode (error.rs)</vh></v>
<v t="vitalije.20201002092722.11"><vh>impl &lt;'de&gt; Deserialize&lt;'de&gt; for AuthErrorCode (error.rs)</vh></v>
<v t="vitalije.20201002092722.12"><vh>impl &lt;T&gt; AuthErrorOr&lt;T&gt; (error.rs)</vh></v>
<v t="vitalije.20201002092722.13"><vh>pub enum Error (error.rs)</vh></v>
<v t="vitalije.20201002092722.14"><vh>impl From&lt;SendRequestError&gt; for Error</vh></v>
<v t="vitalije.20201002092722.15"><vh>impl From&lt;PayloadError&gt; for Error</vh></v>
<v t="vitalije.20201002092722.16"><vh>impl From&lt;AuthError&gt; for Error (error.rs)</vh></v>
<v t="vitalije.20201002092722.17"><vh>impl From&lt;serde_json::Error&gt; for Error (error.rs)</vh></v>
<v t="vitalije.20201002092722.18"><vh>impl From&lt;io::Error&gt; for Error (error.rs)</vh></v>
<v t="vitalije.20201002092722.19"><vh>impl fmt::Display for Error (error.rs)</vh></v>
<v t="vitalije.20201002092722.20"><vh>impl StdError for Error (error.rs)</vh></v>
</v>
<v t="vitalije.20201002092758.1"><vh>@clean src/helper.rs</vh>
<v t="vitalije.20201002092758.2"><vh>parse_service_key</vh></v>
<v t="vitalije.20201002092758.3"><vh>read_service_account_key</vh></v>
<v t="vitalije.20201002092758.4"><vh>join</vh></v>
</v>
<v t="vitalije.20201002092824.1"><vh>@clean src/service_account.rs</vh>
<v t="vitalije.20201002092824.2"><vh>fn append_base64 (service_account.rs)</vh></v>
<v t="vitalije.20201002092824.3"><vh>fn decode_rsa_key (service_account.rs)</vh></v>
<v t="vitalije.20201002092824.4"><vh>pub struct ServiceAccountKey (service_account.rs)</vh></v>
<v t="vitalije.20201002092824.5"><vh>struct Claims (service_account.rs)</vh></v>
<v t="vitalije.20201002092824.6"><vh>impl &lt;'a&gt; Claims&lt;'a&gt; (service_account.rs)</vh></v>
<v t="vitalije.20201002092824.7"><vh>impl JWTSigner (service_account.rs)</vh>
<v t="vitalije.20201002092824.8"><vh>fn new (service_account.rs)</vh></v>
<v t="vitalije.20201002092824.9"><vh>fn sign_claims (service_account.rs)</vh></v>
<v t="vitalije.20201002092824.10"><vh>fn encode_claims (service_account.rs)</vh></v>
</v>
<v t="vitalije.20201002092824.11"><vh>pub struct ServiceAccountFlowOpts (service_account.rs)</vh></v>
<v t="vitalije.20201002092824.12"><vh>pub struct ServiceAccountFlow (service_account.rs)</vh></v>
<v t="vitalije.20201002092824.13"><vh>impl ServiceAccountFlow (service_account.rs)</vh></v>
<v t="vitalije.20201002092824.14"><vh>mod tests (service_account.rs)</vh></v>
</v>
<v t="vitalije.20201002092846.1"><vh>@clean src/storage.rs</vh>
<v t="vitalije.20201002092846.2"><vh>enum FilterResponse (storage.rs)</vh></v>
<v t="vitalije.20201002092846.3"><vh>impl ScopeFilter (storage.rs)</vh></v>
<v t="vitalije.20201002092846.4"><vh>ScopeSet</vh>
<v t="vitalije.20201002092846.5"><vh>impl ScopeSet</vh></v>
</v>
<v t="vitalije.20201002092846.6"><vh>impl Storage (storage.rs)</vh></v>
<v t="vitalije.20201002092846.7"><vh>struct JSONToken (storage.rs)</vh></v>
<v t="vitalije.20201002092846.8"><vh>impl &lt;'de&gt; Deserialize&lt;'de&gt; for JSONToken (storage.rs)</vh></v>
<v t="vitalije.20201002092846.9"><vh>impl Serialize for JSONToken (storage.rs)</vh></v>
<v t="vitalije.20201002092846.10"><vh>JSONTokens</vh></v>
<v t="vitalije.20201002092846.11"><vh>impl Serialize for JSONTokens (storage.rs)</vh></v>
<v t="vitalije.20201002092846.12"><vh>impl Deserialize for JSONTokens</vh></v>
<v t="vitalije.20201002092846.13"><vh>impl JSONTokens (storage.rs)</vh>
<v t="vitalije.20201002092846.14"><vh>new</vh></v>
<v t="vitalije.20201002092846.15"><vh>async load_from_file</vh></v>
<v t="vitalije.20201002092846.16"><vh>get (storage.rs)</vh></v>
<v t="vitalije.20201002092846.17"><vh>set (storage.rs)</vh></v>
</v>
<v t="vitalije.20201002092846.18"><vh>impl DiskStorage (storage.rs)</vh></v>
<v t="vitalije.20201002092846.19"><vh>open_writeable_file not unix</vh></v>
<v t="vitalije.20201002092846.20"><vh>open_writeable_file unix</vh></v>
<v t="vitalije.20201002092846.21"><vh>mod tests (storage.rs)</vh>
<v t="vitalije.20201002092846.22"><vh>fn test_scope_filter (storage.rs)</vh></v>
</v>
</v>
<v t="vitalije.20201002092908.1"><vh>@clean src/types.rs</vh>
<v t="vitalije.20201002092908.2"><vh>pub struct AccessToken (types.rs)</vh></v>
<v t="vitalije.20201002092908.3"><vh>impl AccessToken (types.rs)</vh></v>
<v t="vitalije.20201002092908.4"><vh>impl AsRef&lt;str&gt; for AccessToken (types.rs)</vh></v>
<v t="vitalije.20201002092908.5"><vh>impl From&lt;TokenInfo&gt; for AccessToken (types.rs)</vh></v>
<v t="vitalije.20201002092908.6"><vh>impl TokenInfo (types.rs)</vh>
<v t="vitalije.20201002092908.7"><vh>from_json</vh></v>
<v t="vitalije.20201002092908.8"><vh>is_expired</vh></v>
</v>
</v>
</v>
<v t="vitalije.20201002085449.7"><vh>@path service-account</vh>
<v t="vitalije.20201002085449.8"><vh>@clean Cargo.toml</vh></v>
<v t="vitalije.20201002085449.9"><vh>@clean src/main.rs</vh>
<v t="vitalije.20201002093500.2"><vh>GMAIL_SCOPES</vh></v>
<v t="vitalije.20201002093500.3"><vh>APP_CREDENTIALS</vh></v>
<v t="vitalije.20201002093500.4"><vh>main</vh></v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="vitalije.20201002085218.3"># GSAAFAW - Google Service Account Authenticator For Actix-Web

Most of the code comes from the [yup-oauth2](https://github.com/dermesser/yup-oauth2)
developped by Sebastian Thiel and Lewin Bormann. The code originaly used hyper for
communicating with the google servers. Their code supports installed application, as
well as authentication using sending code to user device.

I needed just to authenticate my actix web server using my service account. I didn't
want to add hyper as a dependency to my project, so I hacked a bit yup-oauth2 to use
actix-web instead of hyper and I deleted everything I didn't need for my use case.

The result is in this repository which represents a cargo workspace with two separate
crates. One is library service-authenticator and the other is small command line that
demonstrates sending an email message using this library and google service account
credentials.


## License

Licensed under either of

 * Apache License, Version 2.0, ([LICENSE-APACHE](LICENSE-APACHE) or
         http://www.apache.org/licenses/LICENSE-2.0)
 * MIT license ([LICENSE-MIT](LICENSE-MIT) or http://opensource.org/licenses/MIT)

at your option.

### Contribution

Unless you explicitly state otherwise, any contribution intentionally
submitted for inclusion in the work by you, as defined in the Apache-2.0
license, shall be dual licensed as above, without any additional terms or
conditions.</t>
<t tx="vitalije.20201002085449.2">@language ini
@tabwidth -4
[workspace]
members = [
    "service-authenticator",
    "service-account"
]
</t>
<t tx="vitalije.20201002085449.4"></t>
<t tx="vitalije.20201002085449.5">[package]
name = "service-authenticator"
version = "0.1.1"
repository = "https://github.com/vitalije/gsaafaw"
authors = [
    "Sebastian Thiel &lt;byronimo@gmail.com&gt;",
    "Lewin Bormann &lt;lbo@spheniscida.de&gt;",
    "Vitalije Milosevic &lt;vitalije@kviziracija.net&gt;"
]
edition = "2018"
keywords = ["google", "oauth", "v2", "actix-web"]
license = "MIT OR Apache-2.0"
description = "An oauth2 implementation, providing the 'service account'authorization flow using actix-web for communication."

[dependencies]
base64 = "0.12"
chrono = { version = "0.4", features = ["serde"] }
actix-rt = "1.1.1"
actix-web = {version = "3.0.0", features=["rustls"]}
actix-http = "2.0.0"
actix-connect = "2.0.0"
log = "0.4"
rustls = "0.17"
seahash = "4"
serde = {version = "1.0", features = ["derive"]}
serde_json = "1.0"
tokio = { version = "0.2", features = ["fs", "macros", "io-std", "time"] }
url = "2"
percent-encoding = "2"
futures = "0.3"

</t>
<t tx="vitalije.20201002085449.6">//! This library is derived from yup-oauth2. Many of the doc comments are still refering
//! to the original library.
//! 
//! This library can be used to acquire oauth2.0 authentication for services.
//!
//! For your application to use this library, you will have to obtain an application
//! id and secret by
//! [following this guide](https://developers.google.com/youtube/registering_an_application) (for
//! Google services) respectively the documentation of the API provider you want to connect to.
//!
//! # Service account "flow"
//! When using service account credentials, no user interaction is required. The access token
//! can be obtained automatically using the private key of the client (which you can download
//! from the API provider). See `service_account` for an example on how to use service
//! account credentials. See
//! [developers.google.com](https://developers.google.com/identity/protocols/OAuth2ServiceAccount)
//! for a detailed description of the protocol. This crate implements OAuth for Service Accounts
//! based on the Google APIs; it may or may not work with other providers.
//!
//! The returned `Token` will be stored in memory in order to authorize future
//! API requests to the same scopes. The tokens can optionally be persisted to
//! disk by using `persist_tokens_to_disk` when creating the authenticator.
//!
//! The following example, shows the basics of using this crate:
//!
//! ```
//! use service_authenticator::parse_service_key;
//! use service_authenticator::AuthenticatorBuilder as AB;
//!
//! static SERVICE_CREDENTIALS:&amp;[u8] = include_bytes!("path to jour credentials.json");
//! // The clientsecret file contains JSON like `{"type":"service_account", "project_id":"my-super-project", ...}`
//! #[tokio::main]
//! async fn main() {
//!     let service_key = parse_service_key(SERVICE_CREDENTIALS)
//!        .expect("bad gmail credentials");
//!     let authenticator = AB::with_service_key(service_key, ACCOUNT_EMAIL)
//!       .build()
//!       .await
//!       .expect("failed to create authenticator");
//!     // once you have authenticator, you can ask for the authorization header
//!     // for any scopes your service account is approved
//!     let scopes = &amp;["https://www.googleapis.com/auth/gmail.send"];
//!     let authorization_header = authenticator
//!       .header(GMAIL_SCOPES)
//!       .await
//!       .expect("Failed to get authorization token");
//!     // now with the authorization header you can send api requests
//!     let mut resp = authenticator
//!       .client
//!       .post("https:://gmail.googleapis.com/gmail/v1/users/USEREMAIL/messages/send")
//!       .header("Content-Type", "application/json")
//!       .header("Authorization", authorization_header.as_str())
//!       .send_body(r#"{"raw": "base64 encoded email message"}"#)
//!       .await
//!       .expect("response error");
//!     println!("Status:{}", resp.status());
//!     match resp.body().await {
//!       Ok(b) =&gt; println!("Body:{:?}", &amp;b),
//!       Err(e) =&gt; println!("Err:{:?}", e),
//!     }
//!     Ok(())
//! }
//! ```
//!
#![deny(missing_docs)]
pub mod authenticator;
pub mod error;
mod helper;
mod service_account;
mod storage;
mod types;

pub use crate::helper::*;

pub use crate::service_account::ServiceAccountKey;

#[doc(inline)]
pub use crate::error::Error;
pub use crate::types::AccessToken;
@language rust
@tabwidth -4
</t>
<t tx="vitalije.20201002085449.7"></t>
<t tx="vitalije.20201002085449.8">@language ini
[package]
name = "service-account"
version = "0.1.0"
authors = ["vitalije &lt;vitalije@kviziracija.net&gt;"]
edition = "2018"

# See more keys and their definitions at https://doc.rust-lang.org/cargo/reference/manifest.html
[dependencies]
base64 = "0.2"
service-authenticator = {path="../service-authenticator"}
actix-rt = "1.1.1"
actix-web = "3.0.0"
actix-http = "2.0.0"
</t>
<t tx="vitalije.20201002085449.9">use service_authenticator::authenticator::AuthenticatorBuilder as AB;
use service_authenticator::parse_service_key;
@others
@language rust
@tabwidth -2
</t>
<t tx="vitalije.20201002092709.1">@language rust
@tabwidth -2
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
@others
</t>
<t tx="vitalije.20201002092709.10">/// Use the provided client builder.
pub fn client(
  self,
  client_builder: awc::ClientBuilder,
) -&gt; AuthenticatorBuilder {
  AuthenticatorBuilder {
    client_builder: client_builder,
    storage_type: self.storage_type,
    auth_flow_opts: self.auth_flow_opts,
  }
}
</t>
<t tx="vitalije.20201002092709.11">/// Persist tokens to disk in the provided filename.
pub fn persist_tokens_to_disk&lt;P: Into&lt;PathBuf&gt;&gt;(
  self,
  path: P,
) -&gt; AuthenticatorBuilder {
  AuthenticatorBuilder {
    storage_type: StorageType::Disk(path.into()),
    ..self
  }
}
</t>
<t tx="vitalije.20201002092709.12">/// uses provided ServiceAccountKey and subject
pub fn with_service_key(
  key: ServiceAccountKey,
  subject: &amp;str,
) -&gt; AuthenticatorBuilder {
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
</t>
<t tx="vitalije.20201002092709.13">/// ## Methods available when building a service account authenticator.
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
    subject: impl Into&lt;String&gt;,
  ) -&gt; Self {
    AuthenticatorBuilder {
      auth_flow_opts: ServiceAccountFlowOpts {
        subject: Some(subject.into()),
        ..self.auth_flow_opts
      },
      ..self
    }
  }

  /// Create the authenticator.
  pub async fn build(self) -&gt; io::Result&lt;Authenticator&gt; {
    Self::common_build(self.client_builder, self.storage_type, self.auth_flow_opts).await
  }
}
</t>
<t tx="vitalije.20201002092709.14">enum StorageType {
  Memory,
  Disk(PathBuf),
}
</t>
<t tx="vitalije.20201002092709.2">/// Authenticator is responsible for fetching tokens, handling refreshing tokens,
/// and optionally persisting tokens to disk.
pub struct Authenticator {
  /// client field is public so that it may be used for sending requests
  /// with the authorization header built from the received token
  pub client: awc::Client,
  storage: Storage,
  auth_flow: ServiceAccountFlow,
}

impl Authenticator {
  @others
}
</t>
<t tx="vitalije.20201002092709.3">/// Return the current token for the provided scopes.
pub async fn token&lt;'a, T&gt;(
  &amp;'a self,
  scopes: &amp;'a [T],
) -&gt; Result&lt;AccessToken, Error&gt;
where
  T: AsRef&lt;str&gt;,
{
  self.find_token(scopes, /* force_refresh = */ false).await
}
</t>
<t tx="vitalije.20201002092709.4">/// returns value for the `Authorization` header (Bearer &lt;token value&gt;)
pub async fn header&lt;'a, T&gt;(
  self: &amp;Self,
  scopes: &amp;'a [T],
) -&gt; Result&lt;String, Error&gt;
where
  T: AsRef&lt;str&gt;,
{
  let tok = self.token(scopes).await?;
  Ok(format!("Bearer {}", tok.as_str()))
}
</t>
<t tx="vitalije.20201002092709.5">/// Return a token for the provided scopes, but don't reuse cached tokens. Instead,
/// always fetch a new token from the OAuth server.
pub async fn force_refreshed_token&lt;'a, T&gt;(
  &amp;'a self,
  scopes: &amp;'a [T],
) -&gt; Result&lt;AccessToken, Error&gt;
where
  T: AsRef&lt;str&gt;,
{
  self.find_token(scopes, /* force_refresh = */ true).await
}
</t>
<t tx="vitalije.20201002092709.6">/// Return a cached token or fetch a new one from the server.
async fn find_token&lt;'a, T&gt;(
  &amp;'a self,
  scopes: &amp;'a [T],
  force_refresh: bool,
) -&gt; Result&lt;AccessToken, Error&gt;
where
  T: AsRef&lt;str&gt;,
{
  log::debug!(
    "access token requested for scopes: {}",
    DisplayScopes(scopes)
  );
  let hashed_scopes = storage::ScopeSet::from(scopes);
  match self.storage.get(hashed_scopes).await {
    Some(t) if !t.is_expired() &amp;&amp; !force_refresh =&gt; {
      // unexpired token found
      log::debug!("found valid token in cache: {:?}", t);
      Ok(t.into())
    }
    _ =&gt; {
      // no token in the cache or the token returned can't be refreshed.
      let token_info = self.auth_flow.token(&amp;self.client, scopes).await?;
      self.storage.set(hashed_scopes, token_info.clone()).await?;
      Ok(token_info.into())
    }
  }
}
</t>
<t tx="vitalije.20201002092709.7">struct DisplayScopes&lt;'a, T&gt;(&amp;'a [T]);
impl&lt;'a, T&gt; fmt::Display for DisplayScopes&lt;'a, T&gt;
where
  T: AsRef&lt;str&gt;,
{
  fn fmt(
    &amp;self,
    f: &amp;mut fmt::Formatter,
  ) -&gt; fmt::Result {
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
</t>
<t tx="vitalije.20201002092709.8">/// Configure an Authenticator using the builder pattern.
pub struct AuthenticatorBuilder {
  client_builder: awc::ClientBuilder,
  storage_type: StorageType,
  auth_flow_opts: ServiceAccountFlowOpts,
}

impl AuthenticatorBuilder {
  @others
}
</t>
<t tx="vitalije.20201002092709.9">async fn common_build(
  client_builder: awc::ClientBuilder,
  storage_type: StorageType,
  auth_flow_opts: ServiceAccountFlowOpts,
) -&gt; io::Result&lt;Authenticator&gt; {
  let client = client_builder.finish();
  let storage = match storage_type {
    StorageType::Memory =&gt; Storage::Memory {
      tokens: Mutex::new(storage::JSONTokens::new()),
    },
    StorageType::Disk(path) =&gt; Storage::Disk(storage::DiskStorage::new(path).await?),
  };
  let auth_flow = ServiceAccountFlow::new(auth_flow_opts)?;
  Ok(Authenticator {
    client,
    storage,
    auth_flow,
  })
}
</t>
<t tx="vitalije.20201002092722.1">//! Module containing various error types.

use std::borrow::Cow;
use std::error::Error as StdError;
use std::fmt;
use std::io;

use actix_web::client::SendRequestError;
use serde::Deserialize;
/// Error returned by the authorization server.
/// https://tools.ietf.org/html/rfc6749#section-5.2
/// https://tools.ietf.org/html/rfc8628#section-3.5
@others
@language rust
@tabwidth -2
</t>
<t tx="vitalije.20201002092722.10">impl&lt;'a&gt; From&lt;&amp;'a str&gt; for AuthErrorCode {
  fn from(s: &amp;str) -&gt; Self {
    AuthErrorCode::from_string(s)
  }
}

</t>
<t tx="vitalije.20201002092722.11">impl&lt;'de&gt; Deserialize&lt;'de&gt; for AuthErrorCode {
  fn deserialize&lt;D&gt;(deserializer: D) -&gt; Result&lt;Self, D::Error&gt;
  where
    D: serde::Deserializer&lt;'de&gt;,
  {
    struct V;
    impl&lt;'de&gt; serde::de::Visitor&lt;'de&gt; for V {
      type Value = AuthErrorCode;
      fn expecting(
        &amp;self,
        f: &amp;mut std::fmt::Formatter,
      ) -&gt; std::fmt::Result {
        f.write_str("any string")
      }
      fn visit_string&lt;E: serde::de::Error&gt;(
        self,
        value: String,
      ) -&gt; Result&lt;Self::Value, E&gt; {
        Ok(value.into())
      }
      fn visit_str&lt;E: serde::de::Error&gt;(
        self,
        value: &amp;str,
      ) -&gt; Result&lt;Self::Value, E&gt; {
        Ok(value.into())
      }
    }
    deserializer.deserialize_string(V)
  }
}

</t>
<t tx="vitalije.20201002092722.12">/// A helper type to deserialize either an AuthError or another piece of data.
#[derive(Deserialize, Debug)]
#[serde(untagged)]
pub(crate) enum AuthErrorOr&lt;T&gt; {
  AuthError(AuthError),
  Data(T),
}

impl&lt;T&gt; AuthErrorOr&lt;T&gt; {
  pub(crate) fn into_result(self) -&gt; Result&lt;T, AuthError&gt; {
    match self {
      AuthErrorOr::AuthError(err) =&gt; Result::Err(err),
      AuthErrorOr::Data(value) =&gt; Result::Ok(value),
    }
  }
}

</t>
<t tx="vitalije.20201002092722.13">/// Encapsulates all possible results of the `token(...)` operation
#[derive(Debug)]
pub enum Error {
  /// Indicates connection failure
  HttpError(SendRequestError),
  /// The server returned an error.
  AuthError(AuthError),
  /// Error while decoding a JSON response.
  JSONError(serde_json::Error),
  /// Error within user input.
  UserError(String),
  /// A lower level IO error.
  LowLevelError(io::Error),
  /// PayloadError
  PayloadError(actix_http::error::PayloadError),
}

</t>
<t tx="vitalije.20201002092722.14">impl From&lt;SendRequestError&gt; for Error {
  fn from(error: SendRequestError) -&gt; Error {
    Error::HttpError(error)
  }
}

</t>
<t tx="vitalije.20201002092722.15">impl From&lt;actix_http::error::PayloadError&gt; for Error {
  fn from(error: actix_http::error::PayloadError) -&gt; Error {
    Error::PayloadError(error)
  }
}

</t>
<t tx="vitalije.20201002092722.16">impl From&lt;AuthError&gt; for Error {
  fn from(value: AuthError) -&gt; Error {
    Error::AuthError(value)
  }
}
</t>
<t tx="vitalije.20201002092722.17">impl From&lt;serde_json::Error&gt; for Error {
  fn from(value: serde_json::Error) -&gt; Error {
    Error::JSONError(value)
  }
}

</t>
<t tx="vitalije.20201002092722.18">impl From&lt;io::Error&gt; for Error {
  fn from(value: io::Error) -&gt; Error {
    Error::LowLevelError(value)
  }
}

</t>
<t tx="vitalije.20201002092722.19">impl fmt::Display for Error {
  fn fmt(
    &amp;self,
    f: &amp;mut fmt::Formatter,
  ) -&gt; Result&lt;(), fmt::Error&gt; {
    match *self {
      Error::HttpError(ref err) =&gt; err.fmt(f),
      Error::AuthError(ref err) =&gt; err.fmt(f),
      Error::JSONError(ref e) =&gt; {
        write!(
          f,
          "JSON Error; this might be a bug with unexpected server responses! {}",
          e
        )?;
        Ok(())
      }
      Error::UserError(ref s) =&gt; s.fmt(f),
      Error::LowLevelError(ref e) =&gt; e.fmt(f),
      Error::PayloadError(ref e) =&gt; e.fmt(f),
    }
  }
}

</t>
<t tx="vitalije.20201002092722.2">#[derive(Deserialize, Debug, PartialEq, Eq)]
pub struct AuthError {
  /// Error code from the server.
  pub error: AuthErrorCode,
  /// Human-readable text providing additional information.
  pub error_description: Option&lt;String&gt;,
  /// A URI identifying a human-readable web page with information about the error.
  pub error_uri: Option&lt;String&gt;,
}
</t>
<t tx="vitalije.20201002092722.20">impl StdError for Error {
  #[cfg(test)]
  fn source(&amp;self) -&gt; Option&lt;&amp;(dyn StdError + 'static)&gt; {
    match *self {
      Error::HttpError(ref err) =&gt; Some(err),
      Error::AuthError(ref err) =&gt; Some(err),
      Error::JSONError(ref err) =&gt; Some(err),
      Error::LowLevelError(ref err) =&gt; Some(err),
      _ =&gt; None,
    }
  }
}
</t>
<t tx="vitalije.20201002092722.3">impl fmt::Display for AuthError {
  fn fmt(
    &amp;self,
    f: &amp;mut fmt::Formatter,
  ) -&gt; fmt::Result {
    write!(f, "{}", &amp;self.error.as_str())?;
    if let Some(desc) = &amp;self.error_description {
      write!(f, ": {}", desc)?;
    }
    if let Some(uri) = &amp;self.error_uri {
      write!(f, "; See {} for more info", uri)?;
    }
    Ok(())
  }
}
</t>
<t tx="vitalije.20201002092722.4">impl StdError for AuthError {}

</t>
<t tx="vitalije.20201002092722.5">/// The error code returned by the authorization server.
#[derive(Debug, Clone, Eq, PartialEq)]
pub enum AuthErrorCode {
  /// invalid_request
  InvalidRequest,
  /// invalid_client
  InvalidClient,
  /// invalid_grant
  InvalidGrant,
  /// unauthorized_client
  UnauthorizedClient,
  /// unsupported_grant_type
  UnsupportedGrantType,
  /// invalid_scope
  InvalidScope,
  /// access_denied
  AccessDenied,
  /// expired_token
  ExpiredToken,
  /// other error
  Other(String),
}

</t>
<t tx="vitalije.20201002092722.6">impl AuthErrorCode {
  /// The error code as a &amp;str
  @others
}

</t>
<t tx="vitalije.20201002092722.7">pub fn as_str(&amp;self) -&gt; &amp;str {
  match self {
    AuthErrorCode::InvalidRequest =&gt; "invalid_request",
    AuthErrorCode::InvalidClient =&gt; "invalid_client",
    AuthErrorCode::InvalidGrant =&gt; "invalid_grant",
    AuthErrorCode::UnauthorizedClient =&gt; "unauthorized_client",
    AuthErrorCode::UnsupportedGrantType =&gt; "unsupported_grant_type",
    AuthErrorCode::InvalidScope =&gt; "invalid_scope",
    AuthErrorCode::AccessDenied =&gt; "access_denied",
    AuthErrorCode::ExpiredToken =&gt; "expired_token",
    AuthErrorCode::Other(s) =&gt; s.as_str(),
  }
}

</t>
<t tx="vitalije.20201002092722.8">fn from_string&lt;'a&gt;(s: impl Into&lt;Cow&lt;'a, str&gt;&gt;) -&gt; AuthErrorCode {
  let s = s.into();
  match s.as_ref() {
    "invalid_request" =&gt; AuthErrorCode::InvalidRequest,
    "invalid_client" =&gt; AuthErrorCode::InvalidClient,
    "invalid_grant" =&gt; AuthErrorCode::InvalidGrant,
    "unauthorized_client" =&gt; AuthErrorCode::UnauthorizedClient,
    "unsupported_grant_type" =&gt; AuthErrorCode::UnsupportedGrantType,
    "invalid_scope" =&gt; AuthErrorCode::InvalidScope,
    "access_denied" =&gt; AuthErrorCode::AccessDenied,
    "expired_token" =&gt; AuthErrorCode::ExpiredToken,
    _ =&gt; AuthErrorCode::Other(s.into_owned()),
  }
}
</t>
<t tx="vitalije.20201002092722.9">impl From&lt;String&gt; for AuthErrorCode {
  fn from(s: String) -&gt; Self {
    AuthErrorCode::from_string(s)
  }
}

</t>
<t tx="vitalije.20201002092758.1">//! Helper functions allowing you to avoid writing boilerplate code for common operations, such as
//! parsing JSON or reading files.

// Copyright (c) 2016 Google Inc (lewinb@google.com).
//
// Refer to the project root for licensing information.
use crate::service_account::ServiceAccountKey;

use std::io;
use std::path::Path;

@others
@language rust
@tabwidth -2
</t>
<t tx="vitalije.20201002092758.2">/// Parse service account key from a [u8].
pub fn parse_service_key(secret: &amp;[u8]) -&gt; io::Result&lt;ServiceAccountKey&gt; {
  serde_json::from_slice(secret).map_err(|e| {
    io::Error::new(
      io::ErrorKind::InvalidData,
      format!("Bad service account key: {}", e),
    )
  })
}
</t>
<t tx="vitalije.20201002092758.3">/// Read a service account key from a JSON file. You can download the JSON keys from the Google
/// Cloud Console or the respective console of your service provider.
pub async fn read_service_account_key&lt;P: AsRef&lt;Path&gt;&gt;(path: P) -&gt; io::Result&lt;ServiceAccountKey&gt; {
  let key = tokio::fs::read(path).await?;
  serde_json::from_slice(&amp;key).map_err(|e| {
    io::Error::new(
      io::ErrorKind::InvalidData,
      format!("Bad service account key: {}", e),
    )
  })
}
</t>
<t tx="vitalije.20201002092758.4">pub(crate) fn join&lt;T&gt;(
  pieces: &amp;[T],
  separator: &amp;str,
) -&gt; String
where
  T: AsRef&lt;str&gt;,
{
  let mut iter = pieces.iter();
  let first = match iter.next() {
    Some(p) =&gt; p,
    None =&gt; return String::new(),
  };
  let num_separators = pieces.len() - 1;
  let pieces_size: usize = pieces.iter().map(|p| p.as_ref().len()).sum();
  let size = pieces_size + separator.len() * num_separators;
  let mut result = String::with_capacity(size);
  result.push_str(first.as_ref());
  for p in iter {
    result.push_str(separator);
    result.push_str(p.as_ref());
  }
  debug_assert_eq!(size, result.len());
  result
}
</t>
<t tx="vitalije.20201002092824.1">//! This module provides a token source (`GetToken`) that obtains tokens for service accounts.
//! Service accounts are usually used by software (i.e., non-human actors) to get access to
//! resources. Currently, this module only works with RS256 JWTs, which makes it at least suitable for
//! authentication with Google services.
//!
//! Resources:
//! - [Using OAuth 2.0 for Server to Server
//! Applications](https://developers.google.com/identity/protocols/OAuth2ServiceAccount)
//! - [JSON Web Tokens](https://jwt.io/)
//!
//! Copyright (c) 2016 Google Inc (lewinb@google.com).
//!

use crate::error::Error;
use crate::types::TokenInfo;

use std::io;

use actix_web::client as awc;
use rustls::{
  self,
  internal::pemfile,
  sign::{self, SigningKey},
  PrivateKey,
};
use serde::{Deserialize, Serialize};
use url::form_urlencoded;

const GRANT_TYPE: &amp;str = "urn:ietf:params:oauth:grant-type:jwt-bearer";
const GOOGLE_RS256_HEAD: &amp;str = r#"{"alg":"RS256","typ":"JWT"}"#;

@others
@language rust
@tabwidth -2
</t>
<t tx="vitalije.20201002092824.10">/// Encodes the first two parts (header and claims) to base64 and assembles them into a form
/// ready to be signed.
fn encode_claims(claims: &amp;Claims) -&gt; String {
  let mut head = String::new();
  append_base64(GOOGLE_RS256_HEAD, &amp;mut head);
  head.push_str(".");
  append_base64(&amp;serde_json::to_string(&amp;claims).unwrap(), &amp;mut head);
  head
}
</t>
<t tx="vitalije.20201002092824.11">pub struct ServiceAccountFlowOpts {
  pub(crate) key: ServiceAccountKey,
  pub(crate) subject: Option&lt;String&gt;,
}

</t>
<t tx="vitalije.20201002092824.12">/// ServiceAccountFlow can fetch oauth tokens using a service account.
pub struct ServiceAccountFlow {
  key: ServiceAccountKey,
  subject: Option&lt;String&gt;,
  signer: JWTSigner,
}

</t>
<t tx="vitalije.20201002092824.13">impl ServiceAccountFlow {
  pub(crate) fn new(opts: ServiceAccountFlowOpts) -&gt; Result&lt;Self, io::Error&gt; {
    let signer = JWTSigner::new(&amp;opts.key.private_key)?;
    Ok(ServiceAccountFlow {
      key: opts.key,
      subject: opts.subject,
      signer,
    })
  }

  /// Send a request for a new Bearer token to the OAuth provider.
  pub(crate) async fn token&lt;T&gt;(
    &amp;self,
    client: &amp;awc::Client,
    scopes: &amp;[T],
  ) -&gt; Result&lt;TokenInfo, Error&gt;
  where
    T: AsRef&lt;str&gt;,
  {
    let claims = Claims::new(&amp;self.key, scopes, self.subject.as_ref().map(|x| x.as_str()));
    let signed = self.signer.sign_claims(&amp;claims).map_err(|_| {
      Error::LowLevelError(io::Error::new(
        io::ErrorKind::Other,
        "unable to sign claims",
      ))
    })?;
    let rqbody = form_urlencoded::Serializer::new(String::new())
      .extend_pairs(&amp;[("grant_type", GRANT_TYPE), ("assertion", signed.as_str())])
      .finish();
    let mut resp = client
      .post(&amp;self.key.token_uri)
      .header("Content-Type", "application/x-www-form-urlencoded")
      .send_body(rqbody)
      .await?;
    let body = resp.body().await?;
    log::debug!("received response; body: {:?}", body.as_ref());
    TokenInfo::from_json(body.as_ref())
  }
}

</t>
<t tx="vitalije.20201002092824.14">#[cfg(test)]
mod tests {
  use super::*;
  use crate::helper::read_service_account_key;
  use hyper_rustls::HttpsConnector;

  // Valid but deactivated key.
  const TEST_PRIVATE_KEY_PATH: &amp;'static str = "examples/Sanguine-69411a0c0eea.json";

  // Uncomment this test to verify that we can successfully obtain tokens.
  //#[tokio::test]
  #[allow(dead_code)]
  async fn test_service_account_e2e() {
    let key = read_service_account_key(TEST_PRIVATE_KEY_PATH)
      .await
      .unwrap();
    let acc = ServiceAccountFlow::new(ServiceAccountFlowOpts { key, subject: None }).unwrap();
    let https = HttpsConnector::new();
    let client = hyper::Client::builder()
      .keep_alive(false)
      .build::&lt;_, hyper::Body&gt;(https);
    println!(
      "{:?}",
      acc
        .token(&amp;client, &amp;["https://www.googleapis.com/auth/pubsub"])
        .await
    );
  }

  #[tokio::test]
  async fn test_jwt_initialize_claims() {
    let key = read_service_account_key(TEST_PRIVATE_KEY_PATH)
      .await
      .unwrap();
    let scopes = vec!["scope1", "scope2", "scope3"];
    let claims = Claims::new(&amp;key, &amp;scopes, None);

    assert_eq!(
      claims.iss,
      "oauth2-public-test@sanguine-rhythm-105020.iam.gserviceaccount.com".to_string()
    );
    assert_eq!(claims.scope, "scope1 scope2 scope3".to_string());
    assert_eq!(
      claims.aud,
      "https://accounts.google.com/o/oauth2/token".to_string()
    );
    assert!(claims.exp &gt; 1000000000);
    assert!(claims.iat &lt; claims.exp);
    assert_eq!(claims.exp - claims.iat, 3595);
  }

  #[tokio::test]
  async fn test_jwt_sign() {
    let key = read_service_account_key(TEST_PRIVATE_KEY_PATH)
      .await
      .unwrap();
    let scopes = vec!["scope1", "scope2", "scope3"];
    let signer = JWTSigner::new(&amp;key.private_key).unwrap();
    let claims = Claims::new(&amp;key, &amp;scopes, None);
    let signature = signer.sign_claims(&amp;claims);

    assert!(signature.is_ok());

    let signature = signature.unwrap();
    assert_eq!(
      signature.split(".").nth(0).unwrap(),
      "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9"
    );
  }
}
</t>
<t tx="vitalije.20201002092824.2">/// Encodes s as Base64
fn append_base64&lt;T: AsRef&lt;[u8]&gt; + ?Sized&gt;(
  s: &amp;T,
  out: &amp;mut String,
) {
  base64::encode_config_buf(s, base64::URL_SAFE, out)
}

</t>
<t tx="vitalije.20201002092824.3">/// Decode a PKCS8 formatted RSA key.
fn decode_rsa_key(pem_pkcs8: &amp;str) -&gt; Result&lt;PrivateKey, io::Error&gt; {
  let private_keys = pemfile::pkcs8_private_keys(&amp;mut pem_pkcs8.as_bytes());

  match private_keys {
    Ok(mut keys) if !keys.is_empty() =&gt; {
      keys.truncate(1);
      Ok(keys.remove(0))
    }
    Ok(_) =&gt; Err(io::Error::new(
      io::ErrorKind::InvalidInput,
      "Not enough private keys in PEM",
    )),
    Err(_) =&gt; Err(io::Error::new(
      io::ErrorKind::InvalidInput,
      "Error reading key from PEM",
    )),
  }
}

</t>
<t tx="vitalije.20201002092824.4">/// JSON schema of secret service account key. You can obtain the key from
/// the Cloud Console at https://console.cloud.google.com/.
///
/// You can use `helpers::read_service_account_key()` as a quick way to read a JSON client
/// secret into a ServiceAccountKey.
#[derive(Serialize, Deserialize, Debug, Clone)]
pub struct ServiceAccountKey {
  #[serde(rename = "type")]
  /// key_type
  pub key_type: Option&lt;String&gt;,
  /// project_id
  pub project_id: Option&lt;String&gt;,
  /// private_key_id
  pub private_key_id: Option&lt;String&gt;,
  /// private_key
  pub private_key: String,
  /// client_email
  pub client_email: String,
  /// client_id
  pub client_id: Option&lt;String&gt;,
  /// auth_uri
  pub auth_uri: Option&lt;String&gt;,
  /// token_uri
  pub token_uri: String,
  /// auth_provider_x509_cert_url
  pub auth_provider_x509_cert_url: Option&lt;String&gt;,
  /// client_x509_cert_url
  pub client_x509_cert_url: Option&lt;String&gt;,
}

</t>
<t tx="vitalije.20201002092824.5">/// Permissions requested for a JWT.
/// See https://developers.google.com/identity/protocols/OAuth2ServiceAccount#authorizingrequests.
#[derive(Serialize, Debug)]
struct Claims&lt;'a&gt; {
  iss: &amp;'a str,
  aud: &amp;'a str,
  exp: i64,
  iat: i64,
  #[serde(rename = "sub")]
  subject: Option&lt;&amp;'a str&gt;,
  scope: String,
}

</t>
<t tx="vitalije.20201002092824.6">impl&lt;'a&gt; Claims&lt;'a&gt; {
  fn new&lt;T&gt;(
    key: &amp;'a ServiceAccountKey,
    scopes: &amp;[T],
    subject: Option&lt;&amp;'a str&gt;,
  ) -&gt; Self
  where
    T: AsRef&lt;str&gt;,
  {
    let iat = chrono::Utc::now().timestamp();
    let expiry = iat + 3600 - 5; // Max validity is 1h.

    let scope = crate::helper::join(scopes, " ");
    Claims {
      iss: &amp;key.client_email,
      aud: &amp;key.token_uri,
      exp: expiry,
      iat,
      subject,
      scope,
    }
  }
}

</t>
<t tx="vitalije.20201002092824.7">/// A JSON Web Token ready for signing.
pub(crate) struct JWTSigner {
  signer: Box&lt;dyn rustls::sign::Signer&gt;,
}

impl JWTSigner {
  @others
}

</t>
<t tx="vitalije.20201002092824.8">fn new(private_key: &amp;str) -&gt; Result&lt;Self, io::Error&gt; {
  let key = decode_rsa_key(private_key)?;
  let signing_key = sign::RSASigningKey::new(&amp;key)
    .map_err(|_| io::Error::new(io::ErrorKind::Other, "Couldn't initialize signer"))?;
  let signer = signing_key
    .choose_scheme(&amp;[rustls::SignatureScheme::RSA_PKCS1_SHA256])
    .ok_or_else(|| io::Error::new(io::ErrorKind::Other, "Couldn't choose signing scheme"))?;
  Ok(JWTSigner { signer })
}

</t>
<t tx="vitalije.20201002092824.9">fn sign_claims(
  &amp;self,
  claims: &amp;Claims,
) -&gt; Result&lt;String, rustls::TLSError&gt; {
  let mut jwt_head = Self::encode_claims(claims);
  let signature = self.signer.sign(jwt_head.as_bytes())?;
  jwt_head.push_str(".");
  append_base64(&amp;signature, &amp;mut jwt_head);
  Ok(jwt_head)
}

</t>
<t tx="vitalije.20201002092846.1">// partially (c) 2016 Google Inc. (Lewin Bormann, lewinb@google.com)
//
// See project root for licensing information.
//
use crate::types::TokenInfo;

use futures::lock::Mutex;
use std::collections::HashMap;
use std::io;
use std::path::{Path, PathBuf};

use serde::{Deserialize, Serialize};

// The storage layer allows retrieving tokens for scopes that have been
// previously granted tokens. One wrinkle is that a token granted for a set
// of scopes X is also valid for any subset of X's scopes. So when retrieving a
// token for a set of scopes provided by the caller it's beneficial to compare
// that set to all previously stored tokens to see if it is a subset of any
// existing set. To do this efficiently we store a bloom filter along with each
// token that represents the set of scopes the token is associated with. The
// bloom filter allows for efficiently skipping any entries that are
// definitively not a superset.
// The current implementation uses a 64bit bloom filter with 4 hash functions.

/// ScopeHash is a hash value derived from a list of scopes. The hash value
/// represents a fingerprint of the set of scopes *independent* of the ordering.
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
struct ScopeHash(u64);

/// ScopeFilter represents a filter for a set of scopes. It can definitively
/// prove that a given list of scopes is not a subset of another.
#[derive(Debug, Copy, Clone, Eq, PartialEq, Hash)]
struct ScopeFilter(u64);
@others
@language rust
@tabwidth -2
</t>
<t tx="vitalije.20201002092846.10">/// List of tokens in a JSON object
#[derive(Debug, Clone)]
pub(crate) struct JSONTokens {
  token_map: HashMap&lt;ScopeHash, JSONToken&gt;,
}
</t>
<t tx="vitalije.20201002092846.11">impl Serialize for JSONTokens {
  fn serialize&lt;S&gt;(
    &amp;self,
    serializer: S,
  ) -&gt; Result&lt;S::Ok, S::Error&gt;
  where
    S: serde::Serializer,
  {
    serializer.collect_seq(self.token_map.values())
  }
}

</t>
<t tx="vitalije.20201002092846.12">impl&lt;'de&gt; Deserialize&lt;'de&gt; for JSONTokens {
  fn deserialize&lt;D&gt;(deserializer: D) -&gt; Result&lt;Self, D::Error&gt;
  where
    D: serde::Deserializer&lt;'de&gt;,
  {
    struct V;
    impl&lt;'de&gt; serde::de::Visitor&lt;'de&gt; for V {
      type Value = JSONTokens;

      // Format a message stating what data this Visitor expects to receive.
      fn expecting(
        &amp;self,
        formatter: &amp;mut std::fmt::Formatter,
      ) -&gt; std::fmt::Result {
        formatter.write_str("a sequence of JSONToken's")
      }

      fn visit_seq&lt;M&gt;(
        self,
        mut access: M,
      ) -&gt; Result&lt;Self::Value, M::Error&gt;
      where
        M: serde::de::SeqAccess&lt;'de&gt;,
      {
        let mut token_map = HashMap::with_capacity(access.size_hint().unwrap_or(0));
        while let Some(json_token) = access.next_element::&lt;JSONToken&gt;()? {
          token_map.insert(json_token.hash, json_token);
        }
        Ok(JSONTokens { token_map })
      }
    }

    // Instantiate our Visitor and ask the Deserializer to drive
    // it over the input data.
    deserializer.deserialize_seq(V)
  }
}

</t>
<t tx="vitalije.20201002092846.13">impl JSONTokens {
  @others
}
</t>
<t tx="vitalije.20201002092846.14">pub(crate) fn new() -&gt; Self {
  JSONTokens {
    token_map: HashMap::new(),
  }
}
</t>
<t tx="vitalije.20201002092846.15">async fn load_from_file(filename: &amp;Path) -&gt; Result&lt;Self, io::Error&gt; {
  let contents = tokio::fs::read(filename).await?;
  serde_json::from_slice(&amp;contents).map_err(|e| io::Error::new(io::ErrorKind::InvalidData, e))
}
</t>
<t tx="vitalije.20201002092846.16">fn get&lt;T&gt;(
  &amp;self,
  ScopeSet {
    hash,
    filter,
    scopes,
  }: ScopeSet&lt;T&gt;,
) -&gt; Option&lt;TokenInfo&gt;
where
  T: AsRef&lt;str&gt;,
{
  if let Some(json_token) = self.token_map.get(&amp;hash) {
    return Some(json_token.token.clone());
  }

  let requested_scopes_are_subset_of = |other_scopes: &amp;[String]| {
    scopes
      .iter()
      .all(|s| other_scopes.iter().any(|t| t.as_str() == s.as_ref()))
  };
  // No exact match for the scopes provided. Search for any tokens that
  // exist for a superset of the scopes requested.
  self
    .token_map
    .values()
    .filter(|json_token| filter.is_subset_of(json_token.filter) == FilterResponse::Maybe)
    .find(|v: &amp;&amp;JSONToken| requested_scopes_are_subset_of(&amp;v.scopes))
    .map(|t: &amp;JSONToken| t.token.clone())
}

</t>
<t tx="vitalije.20201002092846.17">fn set&lt;T&gt;(
  &amp;mut self,
  ScopeSet {
    hash,
    filter,
    scopes,
  }: ScopeSet&lt;T&gt;,
  token: TokenInfo,
) -&gt; Result&lt;(), io::Error&gt;
where
  T: AsRef&lt;str&gt;,
{
  use std::collections::hash_map::Entry;
  match self.token_map.entry(hash) {
    Entry::Occupied(mut entry) =&gt; {
      entry.get_mut().token = token;
    }
    Entry::Vacant(entry) =&gt; {
      let json_token = JSONToken {
        scopes: scopes.iter().map(|x| x.as_ref().to_owned()).collect(),
        token,
        hash,
        filter,
      };
      entry.insert(json_token.clone());
    }
  }
  Ok(())
}
</t>
<t tx="vitalije.20201002092846.18">pub(crate) struct DiskStorage {
  tokens: Mutex&lt;JSONTokens&gt;,
  filename: PathBuf,
}
impl DiskStorage {
  pub(crate) async fn new(filename: PathBuf) -&gt; Result&lt;Self, io::Error&gt; {
    let tokens = match JSONTokens::load_from_file(&amp;filename).await {
      Ok(tokens) =&gt; tokens,
      Err(e) if e.kind() == io::ErrorKind::NotFound =&gt; JSONTokens::new(),
      Err(e) =&gt; return Err(e),
    };

    Ok(DiskStorage {
      tokens: Mutex::new(tokens),
      filename,
    })
  }

  pub(crate) async fn set&lt;T&gt;(
    &amp;self,
    scopes: ScopeSet&lt;'_, T&gt;,
    token: TokenInfo,
  ) -&gt; Result&lt;(), io::Error&gt;
  where
    T: AsRef&lt;str&gt;,
  {
    use tokio::io::AsyncWriteExt;
    let json = {
      use std::ops::Deref;
      let mut lock = self.tokens.lock().await;
      lock.set(scopes, token)?;
      serde_json::to_string(lock.deref())
        .map_err(|e| io::Error::new(io::ErrorKind::InvalidData, e))?
    };
    let mut f = open_writeable_file(&amp;self.filename).await?;
    f.write_all(json.as_bytes()).await?;
    Ok(())
  }

  pub(crate) async fn get&lt;T&gt;(
    &amp;self,
    scopes: ScopeSet&lt;'_, T&gt;,
  ) -&gt; Option&lt;TokenInfo&gt;
  where
    T: AsRef&lt;str&gt;,
  {
    self.tokens.lock().await.get(scopes)
  }
}
</t>
<t tx="vitalije.20201002092846.19">#[cfg(not(unix))]
async fn open_writeable_file(
  filename: impl AsRef&lt;Path&gt;
) -&gt; Result&lt;tokio::fs::File, tokio::io::Error&gt; {
  // I don't have knowledge of windows or other platforms to know how to
  // create a file that's only readable by the current user.
  tokio::fs::File::create(filename).await
}
</t>
<t tx="vitalije.20201002092846.2">#[derive(Debug, Copy, Clone, Eq, PartialEq)]
enum FilterResponse {
  Maybe,
  No,
}

</t>
<t tx="vitalije.20201002092846.20">#[cfg(unix)]
async fn open_writeable_file(
  filename: impl AsRef&lt;Path&gt;
) -&gt; Result&lt;tokio::fs::File, tokio::io::Error&gt; {
  // Ensure if the file is created it's only readable and writable by the
  // current user.
  use std::os::unix::fs::OpenOptionsExt;
  let opts: tokio::fs::OpenOptions = {
    let mut opts = std::fs::OpenOptions::new();
    opts.write(true).create(true).truncate(true).mode(0o600);
    opts.into()
  };
  opts.open(filename).await
}
</t>
<t tx="vitalije.20201002092846.21">#[cfg(test)]
mod tests {
  use super::*;

  #[test]
  @others
}
</t>
<t tx="vitalije.20201002092846.22">fn test_scope_filter() {
  let foo = ScopeSet::from(&amp;["foo"]).filter;
  let bar = ScopeSet::from(&amp;["bar"]).filter;
  let foobar = ScopeSet::from(&amp;["foo", "bar"]).filter;

  // foo and bar are both subsets of foobar. This condition should hold no
  // matter what changes are made to the bloom filter implementation.
  assert!(foo.is_subset_of(foobar) == FilterResponse::Maybe);
  assert!(bar.is_subset_of(foobar) == FilterResponse::Maybe);

  // These conditions hold under the current bloom filter implementation
  // because "foo" and "bar" don't collide, but if the bloom filter
  // implementations change it could be valid for them to return Maybe.
  assert!(foo.is_subset_of(bar) == FilterResponse::No);
  assert!(bar.is_subset_of(foo) == FilterResponse::No);
  assert!(foobar.is_subset_of(foo) == FilterResponse::No);
  assert!(foobar.is_subset_of(bar) == FilterResponse::No);
}

#[tokio::test]
async fn test_disk_storage() {
  let new_token = |access_token: &amp;str| TokenInfo {
    access_token: access_token.to_owned(),
    refresh_token: None,
    expires_at: None,
  };
  let scope_set = ScopeSet::from(&amp;["myscope"]);
  let tempdir = tempfile::tempdir().unwrap();
  {
    let storage = DiskStorage::new(tempdir.path().join("tokenstorage.json"))
      .await
      .unwrap();
    assert!(storage.get(scope_set).await.is_none());
    storage
      .set(scope_set, new_token("my_access_token"))
      .await
      .unwrap();
    assert_eq!(
      storage.get(scope_set).await,
      Some(new_token("my_access_token"))
    );
  }
  {
    // Create a new DiskStorage instance and verify the tokens were read from disk correctly.
    let storage = DiskStorage::new(tempdir.path().join("tokenstorage.json"))
      .await
      .unwrap();
    assert_eq!(
      storage.get(scope_set).await,
      Some(new_token("my_access_token"))
    );
  }
}
</t>
<t tx="vitalije.20201002092846.3">impl ScopeFilter {
  /// Determine if this ScopeFilter could be a subset of the provided filter.
  fn is_subset_of(
    self,
    filter: ScopeFilter,
  ) -&gt; FilterResponse {
    if self.0 &amp; filter.0 == self.0 {
      FilterResponse::Maybe
    }
    else {
      FilterResponse::No
    }
  }
}
</t>
<t tx="vitalije.20201002092846.4">#[derive(Debug)]
pub(crate) struct ScopeSet&lt;'a, T&gt; {
  hash: ScopeHash,
  filter: ScopeFilter,
  scopes: &amp;'a [T],
}

// Implement Clone manually. Auto derive fails to work correctly because we want
// Clone to be implemented regardless of whether T is Clone or not.

impl&lt;'a, T&gt; Clone for ScopeSet&lt;'a, T&gt; {
  fn clone(&amp;self) -&gt; Self {
    ScopeSet {
      hash: self.hash,
      filter: self.filter,
      scopes: self.scopes,
    }
  }
}

impl&lt;'a, T&gt; Copy for ScopeSet&lt;'a, T&gt; {}
</t>
<t tx="vitalije.20201002092846.5">impl&lt;'a, T&gt; ScopeSet&lt;'a, T&gt;
where
  T: AsRef&lt;str&gt;,
{
  // implement an inherent from method even though From is implemented. This
  // is because passing an array ref like &amp;[&amp;str; 1] (&amp;["foo"]) will be auto
  // deref'd to a slice on function boundaries, but it will not implement the
  // From trait. This inherent method just serves to auto deref from array
  // refs to slices and proxy to the From impl.
  pub fn from(scopes: &amp;'a [T]) -&gt; Self {
    let (hash, filter) = scopes.iter().fold(
      (ScopeHash(0), ScopeFilter(0)),
      |(mut scope_hash, mut scope_filter), scope| {
        let h = seahash::hash(scope.as_ref().as_bytes());

        // Use the first 4 6-bit chunks of the seahash as the 4 hash values
        // in the bloom filter.
        for i in 0..4 {
          // h is a hash derived value in the range 0..64
          let h = (h &gt;&gt; (6 * i)) &amp; 0b11_1111;
          scope_filter.0 |= 1 &lt;&lt; h;
        }

        // xor the hashes together to get an order independent fingerprint.
        scope_hash.0 ^= h;
        (scope_hash, scope_filter)
      },
    );
    ScopeSet {
      hash,
      filter,
      scopes,
    }
  }
}

</t>
<t tx="vitalije.20201002092846.6">pub(crate) enum Storage {
  Memory { tokens: Mutex&lt;JSONTokens&gt; },
  Disk(DiskStorage),
}

impl Storage {
  pub(crate) async fn set&lt;T&gt;(
    &amp;self,
    scopes: ScopeSet&lt;'_, T&gt;,
    token: TokenInfo,
  ) -&gt; Result&lt;(), io::Error&gt;
  where
    T: AsRef&lt;str&gt;,
  {
    match self {
      Storage::Memory { tokens } =&gt; tokens.lock().await.set(scopes, token),
      Storage::Disk(disk_storage) =&gt; disk_storage.set(scopes, token).await,
    }
  }

  pub(crate) async fn get&lt;T&gt;(
    &amp;self,
    scopes: ScopeSet&lt;'_, T&gt;,
  ) -&gt; Option&lt;TokenInfo&gt;
  where
    T: AsRef&lt;str&gt;,
  {
    match self {
      Storage::Memory { tokens } =&gt; tokens.lock().await.get(scopes),
      Storage::Disk(disk_storage) =&gt; disk_storage.get(scopes).await,
    }
  }
}

</t>
<t tx="vitalije.20201002092846.7">/// A single stored token.

#[derive(Debug, Clone)]
struct JSONToken {
  scopes: Vec&lt;String&gt;,
  token: TokenInfo,
  hash: ScopeHash,
  filter: ScopeFilter,
}

</t>
<t tx="vitalije.20201002092846.8">impl&lt;'de&gt; Deserialize&lt;'de&gt; for JSONToken {
  fn deserialize&lt;D&gt;(deserializer: D) -&gt; Result&lt;Self, D::Error&gt;
  where
    D: serde::Deserializer&lt;'de&gt;,
  {
    #[derive(Deserialize)]
    struct RawJSONToken {
      scopes: Vec&lt;String&gt;,
      token: TokenInfo,
    }
    let RawJSONToken { scopes, token } = RawJSONToken::deserialize(deserializer)?;
    let ScopeSet { hash, filter, .. } = ScopeSet::from(&amp;scopes);
    Ok(JSONToken {
      scopes,
      token,
      hash,
      filter,
    })
  }
}

</t>
<t tx="vitalije.20201002092846.9">impl Serialize for JSONToken {
  fn serialize&lt;S&gt;(
    &amp;self,
    serializer: S,
  ) -&gt; Result&lt;S::Ok, S::Error&gt;
  where
    S: serde::Serializer,
  {
    #[derive(Serialize)]
    struct RawJSONToken&lt;'a&gt; {
      scopes: &amp;'a [String],
      token: &amp;'a TokenInfo,
    }
    RawJSONToken {
      scopes: &amp;self.scopes,
      token: &amp;self.token,
    }
    .serialize(serializer)
  }
}

</t>
<t tx="vitalije.20201002092908.1">use crate::error::{AuthErrorOr, Error};

use chrono::{DateTime, Utc};
use serde::{Deserialize, Serialize};

@others
@language rust
@tabwidth -2
</t>
<t tx="vitalije.20201002092908.2">/// Represents an access token returned by oauth2 servers. All access tokens are
/// Bearer tokens. Other types of tokens are not supported.
#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash, Deserialize, Serialize)]
pub struct AccessToken {
  value: String,
  expires_at: Option&lt;DateTime&lt;Utc&gt;&gt;,
}

</t>
<t tx="vitalije.20201002092908.3">impl AccessToken {
  /// A string representation of the access token.
  pub fn as_str(&amp;self) -&gt; &amp;str {
    &amp;self.value
  }

  /// The time the access token will expire, if any.
  pub fn expiration_time(&amp;self) -&gt; Option&lt;DateTime&lt;Utc&gt;&gt; {
    self.expires_at
  }

  /// Determine if the access token is expired.
  /// This will report that the token is expired 1 minute prior to the
  /// expiration time to ensure that when the token is actually sent to the
  /// server it's still valid.
  pub fn is_expired(&amp;self) -&gt; bool {
    // Consider the token expired if it's within 1 minute of it's expiration
    // time.
    self
      .expires_at
      .map(|expiration_time| expiration_time - chrono::Duration::minutes(1) &lt;= Utc::now())
      .unwrap_or(false)
  }
}

</t>
<t tx="vitalije.20201002092908.4">impl AsRef&lt;str&gt; for AccessToken {
  fn as_ref(&amp;self) -&gt; &amp;str {
    self.as_str()
  }
}

</t>
<t tx="vitalije.20201002092908.5">impl From&lt;TokenInfo&gt; for AccessToken {
  fn from(value: TokenInfo) -&gt; Self {
    AccessToken {
      value: value.access_token,
      expires_at: value.expires_at,
    }
  }
}

</t>
<t tx="vitalije.20201002092908.6">/// Represents a token as returned by OAuth2 servers.
///
/// It is produced by all authentication flows.
/// It authenticates certain operations, and must be refreshed once
/// it reached it's expiry date.
#[derive(Clone, PartialEq, Debug, Deserialize, Serialize)]
pub(crate) struct TokenInfo {
  /// used when authenticating calls to oauth2 enabled services.
  pub(crate) access_token: String,
  /// used to refresh an expired access_token.
  pub(crate) refresh_token: Option&lt;String&gt;,
  /// The time when the token expires.
  pub(crate) expires_at: Option&lt;DateTime&lt;Utc&gt;&gt;,
}

impl TokenInfo {
  @others
}
</t>
<t tx="vitalije.20201002092908.7">pub(crate) fn from_json(json_data: &amp;[u8]) -&gt; Result&lt;TokenInfo, Error&gt; {
  #[derive(Deserialize)]
  struct RawToken {
    access_token: String,
    refresh_token: Option&lt;String&gt;,
    token_type: String,
    expires_in: Option&lt;i64&gt;,
  }

  let RawToken {
    access_token,
    refresh_token,
    token_type,
    expires_in,
  } = serde_json::from_slice::&lt;AuthErrorOr&lt;RawToken&gt;&gt;(json_data)?.into_result()?;

  if token_type.to_lowercase().as_str() != "bearer" {
    use std::io;
    return Err(
      io::Error::new(
        io::ErrorKind::InvalidData,
        format!(
          r#"unknown token type returned; expected "bearer" found {}"#,
          token_type
        ),
      )
      .into(),
    );
  }

  let expires_at =
    expires_in.map(|seconds_from_now| Utc::now() + chrono::Duration::seconds(seconds_from_now));

  Ok(TokenInfo {
    access_token,
    refresh_token,
    expires_at,
  })
}
</t>
<t tx="vitalije.20201002092908.8">/// Returns true if we are expired.
pub fn is_expired(&amp;self) -&gt; bool {
  self
    .expires_at
    .map(|expiration_time| expiration_time - chrono::Duration::minutes(1) &lt;= Utc::now())
    .unwrap_or(false)
}
</t>
<t tx="vitalije.20201002093500.2">static GMAIL_SCOPES: &amp;[&amp;str] = &amp;[
  "https://www.googleapis.com/auth/gmail.labels",
  "https://www.googleapis.com/auth/gmail.send",
  "https://www.googleapis.com/auth/gmail.readonly",
  "https://www.googleapis.com/auth/gmail.compose",
  "https://www.googleapis.com/auth/gmail.insert",
  "https://www.googleapis.com/auth/gmail.modify",
  "https://www.googleapis.com/auth/gmail.metadata",
  "https://www.googleapis.com/auth/gmail.settings.basic",
  "https://www.googleapis.com/auth/gmail.settings.sharing",
  "https://mail.google.com/",
];
</t>
<t tx="vitalije.20201002093500.3">static APP_CREDENTIALS: &amp;[u8] = include_bytes!("../credentials.json");
static RAW_EMAIL_MESSAGE: &amp;str = r#"{"raw":"...base64 encoded email message..."}"#;
static LINK_EMAIL_SEND: &amp;str =
  "https://gmail.googleapis.com/gmail/v1/users/demo%40example.com/messages/send";
static ACCOUNT_EMAIL: &amp;str = "demo@example.com";
</t>
<t tx="vitalije.20201002093500.4">#[actix_rt::main]
async fn main() -&gt; std::io::Result&lt;()&gt; {
  let service_key = parse_service_key(APP_CREDENTIALS).expect("bad gmail credentials");
  let authenticator = AB::with_service_key(service_key, ACCOUNT_EMAIL)
    .build()
    .await
    .expect("failed to create authenticator");
  let authorization_header = authenticator
    .header(GMAIL_SCOPES)
    .await
    .expect("Failed to get authorization token");

  let mut resp = authenticator
    .client
    .post(LINK_EMAIL_SEND)
    .header("Content-Type", "application/json")
    .header("Authorization", authorization_header.as_str())
    .send_body(RAW_EMAIL_MESSAGE)
    .await
    .expect("response error");
  println!("Status:{}", resp.status());
  match resp.body().await {
    Ok(b) =&gt; println!("Body:{:?}", &amp;b),
    Err(e) =&gt; println!("Err:{:?}", e),
  }
  Ok(())
}
</t>
<t tx="vitalije.20201002100805.1"></t>
<t tx="vitalije.20201002100855.1"></t>
<t tx="vitalije.20201002100855.2">^\s*(?:pub\s+)?(?:async\s+)?fn\s+(\w+)\s*[(&lt;]?
^\s*(?:pub\s+)?(?:async\s+)?struct\s+(\w+)\s*[{]?
^\s*(?:pub\s+)?impl\s+(\w+\s+for\s+\w+)\s*[{]?
^\s*let\s+(?:mut\s+)?(\w+)\s*=\s*[|][^|]*[|]\s*(?:-&gt;|[{])</t>
<t tx="vitalije.20201002100919.1">def clean_uas_and_save_ref():
    for v in c.fileCommands.gnxDict.values():
        if not hasattr(v, 'unknownAttributes'): continue
        if not v:
            del v.unknownAttributes
            continue
        if tuple(v.u.keys()) == ('icons',):
            del v.unknownAttributes
            continue
    c.fileCommands.save_ref()
    c.frame.tree.declutter_update = True
c.save()
clean_uas_and_save_ref()
</t>
<t tx="vitalije.20201002101045.1">w = c.frame.body.wrapper
state = w.getSelectionRange(), w.getInsertPoint()
c.editCommands.extendToWord(None)
i, j = w.getSelectionRange()
b = p.b
word = b[i:j]
def toggle_camel_case(x):
    letters = list(x)
    is_camel_case = x.find('_') &lt; 0
    if is_camel_case:
        for i in range(len(x)-1, -1, -1):
            a = letters[i]
            if 'A' &lt;= a &lt;= 'Z':
                letters[i:i+1] = '_', a.lower()
        return ''.join(letters)
    else:
        i = 0
        while i &lt; len(letters):
            a = letters[i]
            if a == '_':
                letters[i:i+2] = letters[i+1].upper()
            i += 1
        return ''.join(letters)
g.es(f'toggle word [{word}]')
toggled = toggle_camel_case(word)
b = b[:i] + toggled + b[j:]
p.v.b = b
w.setAllText(b)
w.setInsertPoint(i + len(toggled)-1)
if p.v.h == word:
    p.v.h = toggled
    c.frame.tree.position2item(p).setText(0, toggled)
</t>
</tnodes>
</leo_file>
