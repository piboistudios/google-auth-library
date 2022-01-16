package google_auth_library.build.src.auth.oauth2client;

@:jsRequire("google-auth-library/build/src/auth/oauth2client", "CertificateFormat") @:enum extern abstract CertificateFormat(String) from String to String {
	var PEM;
	var JWK;
}