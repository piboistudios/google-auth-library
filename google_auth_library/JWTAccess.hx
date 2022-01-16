package google_auth_library;

@:jsRequire("google-auth-library", "JWTAccess") extern class JWTAccess {
	/**
		JWTAccess service account credentials.
		
		Create a new access token by using the credential to create a new JWT token
		that's recognized as the access token.
	**/
	function new(?email:String, ?key:String, ?keyId:String, ?eagerRefreshThresholdMillis:Float);
	@:optional
	var email : String;
	@:optional
	var key : String;
	@:optional
	var keyId : String;
	@:optional
	var projectId : String;
	var eagerRefreshThresholdMillis : Float;
	private var cache : Dynamic;
	/**
		Ensures that we're caching a key appropriately, giving precedence to scopes vs. url
	**/
	function getCachedKey(?url:String, ?scopes:ts.AnyOf2<String, Array<String>>):String;
	/**
		Get a non-expired access token, after refreshing if necessary.
	**/
	function getRequestHeaders(?url:String, ?additionalClaims:Claims, ?scopes:ts.AnyOf2<String, Array<String>>):google_auth_library.build.src.auth.oauth2client.Headers;
	/**
		Create a JWTAccess credentials instance using the given input options.
	**/
	function fromJSON(json:JWTInput):Void;
	/**
		Create a JWTAccess credentials instance using the given input stream.
	**/
	@:overload(function(inputStream:node.stream.Readable, callback:ts.AnyOf2<() -> Void, (err:js.lib.Error) -> Void>):Void { })
	function fromStream(inputStream:node.stream.Readable):js.lib.Promise<ts.Undefined>;
	private var fromStreamAsync : Dynamic;
	static var prototype : JWTAccess;
	/**
		Returns an expiration time for the JWT token.
	**/
	private static var getExpirationTime : Dynamic;
}