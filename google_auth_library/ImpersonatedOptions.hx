package google_auth_library;

typedef ImpersonatedOptions = {
	/**
		Client used to perform exchange for impersonated client.
	**/
	@:optional
	var sourceClient : google_auth_library.build.src.auth.authclient.AuthClient;
	/**
		The service account to impersonate.
	**/
	@:optional
	var targetPrincipal : String;
	/**
		Scopes to request during the authorization grant.
	**/
	@:optional
	var targetScopes : Array<String>;
	/**
		The chained list of delegates required to grant the final access_token.
	**/
	@:optional
	var delegates : Array<String>;
	/**
		Number of seconds the delegated credential should be valid.
	**/
	@:optional
	var lifetime : Float;
	/**
		API endpoint to fetch token from.
	**/
	@:optional
	var endpoint : String;
	@:optional
	var eagerRefreshThresholdMillis : Float;
	@:optional
	var forceRefreshOnFailure : Bool;
};