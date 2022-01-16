package google_auth_library;

@:jsRequire("google-auth-library", "CodeChallengeMethod") @:enum extern abstract CodeChallengeMethod(String) from String to String {
	var Plain;
	var S256;
}