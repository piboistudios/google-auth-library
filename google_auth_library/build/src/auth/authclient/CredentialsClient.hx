package google_auth_library.build.src.auth.authclient;

/**
	Defines the root interface for all clients that generate credentials
	for calling Google APIs. All clients should implement this interface.
**/
typedef CredentialsClient = {
	/**
		The project ID corresponding to the current credentials if available.
	**/
	@:optional
	var projectId : String;
	/**
		The expiration threshold in milliseconds before forcing token refresh.
	**/
	var eagerRefreshThresholdMillis : Float;
	/**
		Whether to force refresh on failure when making an authorization request.
	**/
	var forceRefreshOnFailure : Bool;
	function getAccessToken():js.lib.Promise<{
		@:optional
		var token : String;
		@:optional
		var res : gaxios.GaxiosResponse<Dynamic>;
	}>;
	/**
		The main authentication interface. It takes an optional url which when
		present is the endpoint being accessed, and returns a Promise which
		resolves with authorization header fields.
		
		The result has the form:
		{ Authorization: 'Bearer <access_token_value>' }
	**/
	function getRequestHeaders(?url:String):js.lib.Promise<google_auth_library.build.src.auth.oauth2client.Headers>;
	/**
		Provides an alternative Gaxios request implementation with auth credentials
	**/
	function request<T>(opts:gaxios.GaxiosOptions):gaxios.GaxiosPromise<T>;
	/**
		Sets the auth credentials.
	**/
	function setCredentials(credentials:google_auth_library.Credentials):Void;
	/**
		Subscribes a listener to the tokens event triggered when a token is
		generated.
	**/
	function on(event:String, listener:(tokens:google_auth_library.Credentials) -> Void):CredentialsClient;
};