use crate::error::{AuthErrorOr, Error};

use chrono::{DateTime, Utc};
use serde::{Deserialize, Serialize};

/// Represents an access token returned by oauth2 servers. All access tokens are
/// Bearer tokens. Other types of tokens are not supported.
#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash, Deserialize, Serialize)]
pub struct AccessToken {
  value: String,
  expires_at: Option<DateTime<Utc>>,
}

impl AccessToken {
  /// A string representation of the access token.
  pub fn as_str(&self) -> &str {
    &self.value
  }

  /// The time the access token will expire, if any.
  pub fn expiration_time(&self) -> Option<DateTime<Utc>> {
    self.expires_at
  }

  /// Determine if the access token is expired.
  /// This will report that the token is expired 1 minute prior to the
  /// expiration time to ensure that when the token is actually sent to the
  /// server it's still valid.
  pub fn is_expired(&self) -> bool {
    // Consider the token expired if it's within 1 minute of it's expiration
    // time.
    self
      .expires_at
      .map(|expiration_time| expiration_time - chrono::Duration::minutes(1) <= Utc::now())
      .unwrap_or(false)
  }
}

impl AsRef<str> for AccessToken {
  fn as_ref(&self) -> &str {
    self.as_str()
  }
}

impl From<TokenInfo> for AccessToken {
  fn from(value: TokenInfo) -> Self {
    AccessToken {
      value: value.access_token,
      expires_at: value.expires_at,
    }
  }
}

/// Represents a token as returned by OAuth2 servers.
///
/// It is produced by all authentication flows.
/// It authenticates certain operations, and must be refreshed once
/// it reached it's expiry date.
#[derive(Clone, PartialEq, Debug, Deserialize, Serialize)]
pub(crate) struct TokenInfo {
  /// used when authenticating calls to oauth2 enabled services.
  pub(crate) access_token: String,
  /// used to refresh an expired access_token.
  pub(crate) refresh_token: Option<String>,
  /// The time when the token expires.
  pub(crate) expires_at: Option<DateTime<Utc>>,
}

impl TokenInfo {
  pub(crate) fn from_json(json_data: &[u8]) -> Result<TokenInfo, Error> {
    #[derive(Deserialize)]
    struct RawToken {
      access_token: String,
      refresh_token: Option<String>,
      token_type: String,
      expires_in: Option<i64>,
    }

    let RawToken {
      access_token,
      refresh_token,
      token_type,
      expires_in,
    } = serde_json::from_slice::<AuthErrorOr<RawToken>>(json_data)?.into_result()?;

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
  /// Returns true if we are expired.
  pub fn is_expired(&self) -> bool {
    self
      .expires_at
      .map(|expiration_time| expiration_time - chrono::Duration::minutes(1) <= Utc::now())
      .unwrap_or(false)
  }
}
