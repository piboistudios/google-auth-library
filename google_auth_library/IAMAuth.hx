package google_auth_library;

@:jsRequire("google-auth-library", "IAMAuth") extern class IAMAuth {
	/**
		IAM credentials.
	**/
	function new(selector:String, token:String);
	var selector : String;
	var token : String;
	/**
		Acquire the HTTP headers required to make an authenticated request.
	**/
	function getRequestHeaders():{
		@:native("x-goog-iam-authority-selector")
		var x_goog_iam_authority_selector : String;
		@:native("x-goog-iam-authorization-token")
		var x_goog_iam_authorization_token : String;
	};
	static var prototype : IAMAuth;
}