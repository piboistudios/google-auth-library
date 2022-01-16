package google_auth_library;

typedef GetTokenOptions = {
	var code : String;
	@:optional
	var codeVerifier : String;
	/**
		The client ID for your application. The value passed into the constructor
		will be used if not provided. Must match any client_id option passed to
		a corresponding call to generateAuthUrl.
	**/
	@:optional
	var client_id : String;
	/**
		Determines where the API server redirects the user after the user
		completes the authorization flow. The value passed into the constructor
		will be used if not provided. Must match any redirect_uri option passed to
		a corresponding call to generateAuthUrl.
	**/
	@:optional
	var redirect_uri : String;
};