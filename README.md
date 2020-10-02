# Authenticator for google service accounts using actix

Most of the code comes from the [yup-oauth2](https://github.com/dermesser/yup-oauth2)
developped by Sebastian Thiel and Lewin Bormann. The code originaly used hyper for
communicating with the google servers. Their code supports installed application, as
well as authentication using sending code to user device.

I needed just to authenticate my actix web server using my service account. I didn't
want to add hyper as a dependency to my project, so I hacked a bit yup-oauth2 to use
actix-web instead of hyper and I deleted everything I didn't need for my use case.

The result is in this repository which represents a cargo workspace with two separate
crates. One is library service-authenticator and the other is small command line that
demonstrates sending a an email message using this library and google service account
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
conditions.
