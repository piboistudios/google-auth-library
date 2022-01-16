package google_auth_library;

typedef VerifyIdTokenOptions = {
	var idToken : String;
	@:optional
	var audience : ts.AnyOf2<String, Array<String>>;
	@:optional
	var maxExpiry : Float;
};