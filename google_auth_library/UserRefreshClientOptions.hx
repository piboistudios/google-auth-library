package google_auth_library;

typedef UserRefreshClientOptions = {
	@:optional
	var clientId : String;
	@:optional
	var clientSecret : String;
	@:optional
	var refreshToken : String;
	@:optional
	var eagerRefreshThresholdMillis : Float;
	@:optional
	var forceRefreshOnFailure : Bool;
};