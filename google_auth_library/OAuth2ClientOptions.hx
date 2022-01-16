package google_auth_library;

typedef OAuth2ClientOptions = {
	@:optional
	var clientId : String;
	@:optional
	var clientSecret : String;
	@:optional
	var redirectUri : String;
	@:optional
	var eagerRefreshThresholdMillis : Float;
	@:optional
	var forceRefreshOnFailure : Bool;
};