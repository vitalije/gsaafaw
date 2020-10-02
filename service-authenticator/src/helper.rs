//! Helper functions allowing you to avoid writing boilerplate code for common operations, such as
//! parsing JSON or reading files.

// Copyright (c) 2016 Google Inc (lewinb@google.com).
//
// Refer to the project root for licensing information.
use crate::service_account::ServiceAccountKey;

use std::io;
use std::path::Path;

/// Parse service account key from a [u8].
pub fn parse_service_key(secret: &[u8]) -> io::Result<ServiceAccountKey> {
  serde_json::from_slice(secret).map_err(|e| {
    io::Error::new(
      io::ErrorKind::InvalidData,
      format!("Bad service account key: {}", e),
    )
  })
}
/// Read a service account key from a JSON file. You can download the JSON keys from the Google
/// Cloud Console or the respective console of your service provider.
pub async fn read_service_account_key<P: AsRef<Path>>(path: P) -> io::Result<ServiceAccountKey> {
  let key = tokio::fs::read(path).await?;
  serde_json::from_slice(&key).map_err(|e| {
    io::Error::new(
      io::ErrorKind::InvalidData,
      format!("Bad service account key: {}", e),
    )
  })
}
pub(crate) fn join<T>(
  pieces: &[T],
  separator: &str,
) -> String
where
  T: AsRef<str>,
{
  let mut iter = pieces.iter();
  let first = match iter.next() {
    Some(p) => p,
    None => return String::new(),
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
