package google_auth_library;

typedef ComputeOptions = {
	/**
		The service account email to use, or 'default'. A Compute Engine instance
		may have multiple service accounts.
	**/
	@:optional
	var serviceAccountEmail : String;
	/**
		The scopes that will be requested when acquiring service account
		credentials. Only applicable to modern App Engine and Cloud Function
		runtimes as of March 2019.
	**/
	@:optional
	var scopes : ts.AnyOf2<String, Array<String>>;
	@:optional
	var eagerRefreshThresholdMillis : Float;
	@:optional
	var forceRefreshOnFailure : Bool;
};