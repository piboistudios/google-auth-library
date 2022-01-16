package google_auth_library;

typedef RequestMetadata = {
	@:native("x-goog-iam-authority-selector")
	var x_goog_iam_authority_selector : String;
	@:native("x-goog-iam-authorization-token")
	var x_goog_iam_authorization_token : String;
};