//! This library is derived from yup-oauth2. Many of the doc comments are still refering
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
//! static SERVICE_CREDENTIALS:&[u8] = include_bytes!("path to jour credentials.json");
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
//!     let scopes = &["https://www.googleapis.com/auth/gmail.send"];
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
//!       Ok(b) => println!("Body:{:?}", &b),
//!       Err(e) => println!("Err:{:?}", e),
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
