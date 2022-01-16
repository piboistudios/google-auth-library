package google_auth_library;

typedef RefreshOptions = {
	@:optional
	var eagerRefreshThresholdMillis : Float;
	@:optional
	var forceRefreshOnFailure : Bool;
};