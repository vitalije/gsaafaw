use service_authenticator::authenticator::AuthenticatorBuilder as AB;
use service_authenticator::parse_service_key;
static GMAIL_SCOPES: &[&str] = &[
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
static APP_CREDENTIALS: &[u8] = include_bytes!("../credentials.json");
static RAW_EMAIL_MESSAGE: &str = r#"{"raw":"...base64 encoded email message..."}"#;
static LINK_EMAIL_SEND: &str =
  "https://gmail.googleapis.com/gmail/v1/users/demo%40example.com/messages/send";
static ACCOUNT_EMAIL: &str = "demo@example.com";
#[actix_rt::main]
async fn main() -> std::io::Result<()> {
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
    Ok(b) => println!("Body:{:?}", &b),
    Err(e) => println!("Err:{:?}", e),
  }
  Ok(())
}
