package google_auth_library;

@:jsRequire("google-auth-library", "GoogleAuth") extern class GoogleAuth {
	function new(?opts:GoogleAuthOptions);
	@:optional
	var transporter : google_auth_library.build.src.transporters.Transporter;
	/**
		Caches a value indicating whether the auth layer is running on Google
		Compute Engine.
	**/
	@:optional
	private var checkIsGCE : Dynamic;
	@:optional
	var useJWTAccessWithScope : Bool;
	@:optional
	var defaultServicePath : String;
	final isGCE : Null<Bool>;
	@:optional
	private var _getDefaultProjectIdPromise : Dynamic;
	@:optional
	private var _cachedProjectId : Dynamic;
	var jsonContent : Null<ts.AnyOf3<JWTInput, IdentityPoolClientOptions, AwsClientOptions>>;
	var cachedCredential : Null<ts.AnyOf5<Compute, JWT, Impersonated, UserRefreshClient, BaseExternalAccountClient>>;
	/**
		Scopes populated by the client library by default. We differentiate between
		these and user defined scopes when deciding whether to use a self-signed JWT.
	**/
	@:optional
	var defaultScopes : ts.AnyOf2<String, Array<String>>;
	@:optional
	private var keyFilename : Dynamic;
	@:optional
	private var scopes : Dynamic;
	@:optional
	private var clientOptions : Dynamic;
	function setGapicJWTValues(client:JWT):Void;
	/**
		Obtains the default project ID for the application.
	**/
	@:overload(function(callback:ProjectIdCallback):Void { })
	function getProjectId():js.lib.Promise<String>;
	private var getProjectIdAsync : Dynamic;
	private var getAnyScopes : Dynamic;
	/**
		Obtains the default service-level credentials for the application.
	**/
	@:overload(function(callback:google_auth_library.build.src.auth.googleauth.ADCCallback):Void { })
	@:overload(function(options:RefreshOptions):js.lib.Promise<google_auth_library.build.src.auth.googleauth.ADCResponse> { })
	@:overload(function(options:RefreshOptions, callback:google_auth_library.build.src.auth.googleauth.ADCCallback):Void { })
	function getApplicationDefault():js.lib.Promise<google_auth_library.build.src.auth.googleauth.ADCResponse>;
	private var getApplicationDefaultAsync : Dynamic;
	/**
		Determines whether the auth layer is running on Google Compute Engine.
	**/
	function _checkIsGCE():js.lib.Promise<Bool>;
	/**
		Attempts to load default credentials from the environment variable path..
	**/
	function _tryGetApplicationCredentialsFromEnvironmentVariable(?options:RefreshOptions):js.lib.Promise<Null<google_auth_library.build.src.auth.googleauth.JSONClient>>;
	/**
		Attempts to load default credentials from a well-known file location
	**/
	function _tryGetApplicationCredentialsFromWellKnownFile(?options:RefreshOptions):js.lib.Promise<Null<google_auth_library.build.src.auth.googleauth.JSONClient>>;
	/**
		Attempts to load default credentials from a file at the given path..
	**/
	function _getApplicationCredentialsFromFilePath(filePath:String, ?options:RefreshOptions):js.lib.Promise<google_auth_library.build.src.auth.googleauth.JSONClient>;
	/**
		Create a credentials instance using the given input options.
	**/
	function fromJSON(json:JWTInput, ?options:RefreshOptions):google_auth_library.build.src.auth.googleauth.JSONClient;
	/**
		Return a JWT or UserRefreshClient from JavaScript object, caching both the
		object used to instantiate and the client.
	**/
	private var _cacheClientFromJSON : Dynamic;
	/**
		Create a credentials instance using the given input stream.
	**/
	@:overload(function(inputStream:node.stream.Readable, callback:google_auth_library.build.src.auth.googleauth.CredentialCallback):Void { })
	@:overload(function(inputStream:node.stream.Readable, options:RefreshOptions):js.lib.Promise<google_auth_library.build.src.auth.googleauth.JSONClient> { })
	@:overload(function(inputStream:node.stream.Readable, options:RefreshOptions, callback:google_auth_library.build.src.auth.googleauth.CredentialCallback):Void { })
	function fromStream(inputStream:node.stream.Readable):js.lib.Promise<google_auth_library.build.src.auth.googleauth.JSONClient>;
	private var fromStreamAsync : Dynamic;
	/**
		Create a credentials instance using the given API key string.
	**/
	function fromAPIKey(apiKey:String, ?options:RefreshOptions):JWT;
	/**
		Determines whether the current operating system is Windows.
	**/
	private var _isWindows : Dynamic;
	/**
		Run the Google Cloud SDK command that prints the default project ID
	**/
	private var getDefaultServiceProjectId : Dynamic;
	/**
		Loads the project id from environment variables.
	**/
	private var getProductionProjectId : Dynamic;
	/**
		Loads the project id from the GOOGLE_APPLICATION_CREDENTIALS json file.
	**/
	private var getFileProjectId : Dynamic;
	/**
		Gets the project ID from external account client if available.
	**/
	private var getExternalAccountClientProjectId : Dynamic;
	/**
		Gets the Compute Engine project ID if it can be inferred.
	**/
	private var getGCEProjectId : Dynamic;
	/**
		The callback function handles a credential object that contains the
		client_email and private_key (if exists).
		getCredentials checks for these values from the user JSON at first.
		If it doesn't exist, and the environment is on GCE, it gets the
		client_email from the cloud metadata server.
	**/
	@:overload(function(callback:ts.AnyOf2<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, credentials:CredentialBody) -> Void>):Void { })
	function getCredentials():js.lib.Promise<CredentialBody>;
	private var getCredentialsAsync : Dynamic;
	/**
		Automatically obtain a client based on the provided configuration.  If no
		options were passed, use Application Default Credentials.
	**/
	function getClient(?options:DeprecatedGetClientOptions):js.lib.Promise<ts.AnyOf5<Compute, JWT, Impersonated, UserRefreshClient, BaseExternalAccountClient>>;
	/**
		Creates a client which will fetch an ID token for authorization.
	**/
	function getIdTokenClient(targetAudience:String):js.lib.Promise<IdTokenClient>;
	/**
		Automatically obtain application default credentials, and return
		an access token for making requests.
	**/
	function getAccessToken():js.lib.Promise<Null<String>>;
	/**
		Obtain the HTTP headers that will provide authorization for a given
		request.
	**/
	function getRequestHeaders(?url:String):js.lib.Promise<google_auth_library.build.src.auth.oauth2client.Headers>;
	/**
		Obtain credentials for a request, then attach the appropriate headers to
		the request options.
	**/
	function authorizeRequest(opts:{ @:optional var url : String; @:optional var uri : String; @:optional var headers : google_auth_library.build.src.auth.oauth2client.Headers; }):js.lib.Promise<{
		@:optional
		var url : String;
		@:optional
		var uri : String;
		@:optional
		var headers : google_auth_library.build.src.auth.oauth2client.Headers;
	}>;
	/**
		Automatically obtain application default credentials, and make an
		HTTP request using the given options.
	**/
	function request<T>(opts:gaxios.GaxiosOptions):js.lib.Promise<gaxios.GaxiosResponse<T>>;
	/**
		Determine the compute environment in which the code is running.
	**/
	function getEnv():js.lib.Promise<GCPEnv>;
	/**
		Sign the given data with the current private key, or go out
		to the IAM API to sign it.
	**/
	function sign(data:String):js.lib.Promise<String>;
	private var signBlob : Dynamic;
	static var prototype : GoogleAuth;
	/**
		Export DefaultTransporter as a static property of the class.
	**/
	static var DefaultTransporter : {
		var prototype : DefaultTransporter;
		/**
			Default user agent.
		**/
		final USER_AGENT : String;
	};
}