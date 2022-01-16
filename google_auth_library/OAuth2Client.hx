package google_auth_library;

@:jsRequire("google-auth-library", "OAuth2Client") extern class OAuth2Client extends google_auth_library.build.src.auth.authclient.AuthClient {
	/**
		Handles OAuth2 flow for Google APIs.
	**/
	@:overload(function(?clientId:String, ?clientSecret:String, ?redirectUri:String):OAuth2Client { })
	function new(?options:OAuth2ClientOptions);
	@:optional
	private var redirectUri : Dynamic;
	private var certificateCache : Dynamic;
	private var certificateExpiry : Dynamic;
	private var certificateCacheFormat : Dynamic;
	private var refreshTokenPromises : js.lib.Map<String, js.lib.Promise<google_auth_library.build.src.auth.oauth2client.GetTokenResponse>>;
	@:optional
	var _clientId : String;
	@:optional
	var _clientSecret : String;
	@:optional
	var apiKey : String;
	@:optional
	dynamic function refreshHandler():js.lib.Promise<google_auth_library.build.src.auth.oauth2client.AccessTokenResponse>;
	/**
		Generates URL for consent page landing.
	**/
	function generateAuthUrl(?opts:GenerateAuthUrlOpts):String;
	function generateCodeVerifier():Void;
	/**
		Convenience method to automatically generate a code_verifier, and its
		resulting SHA256. If used, this must be paired with a S256
		code_challenge_method.
		
		For a full example see:
		https://github.com/googleapis/google-auth-library-nodejs/blob/main/samples/oauth2-codeVerifier.js
	**/
	function generateCodeVerifierAsync():js.lib.Promise<CodeVerifierResults>;
	/**
		Gets the access token for the given code.
	**/
	@:overload(function(options:GetTokenOptions):js.lib.Promise<google_auth_library.build.src.auth.oauth2client.GetTokenResponse> { })
	@:overload(function(code:String, callback:google_auth_library.build.src.auth.oauth2client.GetTokenCallback):Void { })
	@:overload(function(options:GetTokenOptions, callback:google_auth_library.build.src.auth.oauth2client.GetTokenCallback):Void { })
	function getToken(code:String):js.lib.Promise<google_auth_library.build.src.auth.oauth2client.GetTokenResponse>;
	private var getTokenAsync : Dynamic;
	/**
		Refreshes the access token.
	**/
	private function refreshToken(?refreshToken:String):js.lib.Promise<google_auth_library.build.src.auth.oauth2client.GetTokenResponse>;
	private function refreshTokenNoCache(?refreshToken:String):js.lib.Promise<google_auth_library.build.src.auth.oauth2client.GetTokenResponse>;
	/**
		Retrieves the access token using refresh token
	**/
	@:overload(function(callback:google_auth_library.build.src.auth.oauth2client.RefreshAccessTokenCallback):Void { })
	function refreshAccessToken():js.lib.Promise<google_auth_library.build.src.auth.oauth2client.RefreshAccessTokenResponse>;
	private var refreshAccessTokenAsync : Dynamic;
	/**
		Get a non-expired access token, after refreshing if necessary
	**/
	@:overload(function(callback:google_auth_library.build.src.auth.oauth2client.GetAccessTokenCallback):Void { })
	function getAccessToken():js.lib.Promise<google_auth_library.build.src.auth.oauth2client.GetAccessTokenResponse>;
	private var getAccessTokenAsync : Dynamic;
	private function getRequestMetadataAsync(?url:String):js.lib.Promise<google_auth_library.build.src.auth.oauth2client.RequestMetadataResponse>;
	/**
		Revokes the access given to token.
	**/
	@:overload(function(token:String, callback:google_auth_library.build.src.transporters.BodyResponseCallback<google_auth_library.build.src.auth.oauth2client.RevokeCredentialsResult>):Void { })
	function revokeToken(token:String):gaxios.GaxiosPromise<google_auth_library.build.src.auth.oauth2client.RevokeCredentialsResult>;
	/**
		Revokes access token and clears the credentials object
	**/
	@:overload(function(callback:google_auth_library.build.src.transporters.BodyResponseCallback<google_auth_library.build.src.auth.oauth2client.RevokeCredentialsResult>):Void { })
	function revokeCredentials():gaxios.GaxiosPromise<google_auth_library.build.src.auth.oauth2client.RevokeCredentialsResult>;
	private var revokeCredentialsAsync : Dynamic;
	/**
		Provides a request implementation with OAuth 2.0 flow. If credentials have
		a refresh_token, in cases of HTTP 401 and 403 responses, it automatically
		asks for a new access token and replays the unsuccessful request.
	**/
	@:overload(function<T>(opts:gaxios.GaxiosOptions, callback:google_auth_library.build.src.transporters.BodyResponseCallback<T>):Void { })
	function request<T>(opts:gaxios.GaxiosOptions):gaxios.GaxiosPromise<T>;
	private function requestAsync<T>(opts:gaxios.GaxiosOptions, ?retry:Bool):js.lib.Promise<gaxios.GaxiosResponse<T>>;
	/**
		Verify id token is token by checking the certs and audience
	**/
	@:overload(function(options:VerifyIdTokenOptions, callback:ts.AnyOf2<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, login:LoginTicket) -> Void>):Void { })
	function verifyIdToken(options:VerifyIdTokenOptions):js.lib.Promise<LoginTicket>;
	private var verifyIdTokenAsync : Dynamic;
	/**
		Obtains information about the provisioned access token.  Especially useful
		if you want to check the scopes that were provisioned to a given token.
	**/
	function getTokenInfo(accessToken:String):js.lib.Promise<TokenInfo>;
	/**
		Gets federated sign-on certificates to use for verifying identity tokens.
		Returns certs as array structure, where keys are key ids, and values
		are certificates in either PEM or JWK format.
	**/
	@:overload(function(callback:google_auth_library.build.src.auth.oauth2client.GetFederatedSignonCertsCallback):Void { })
	function getFederatedSignonCerts():js.lib.Promise<google_auth_library.build.src.auth.oauth2client.FederatedSignonCertsResponse>;
	function getFederatedSignonCertsAsync():js.lib.Promise<google_auth_library.build.src.auth.oauth2client.FederatedSignonCertsResponse>;
	/**
		Gets federated sign-on certificates to use for verifying identity tokens.
		Returns certs as array structure, where keys are key ids, and values
		are certificates in either PEM or JWK format.
	**/
	@:overload(function(callback:google_auth_library.build.src.auth.oauth2client.GetIapPublicKeysCallback):Void { })
	function getIapPublicKeys():js.lib.Promise<google_auth_library.build.src.auth.oauth2client.IapPublicKeysResponse>;
	function getIapPublicKeysAsync():js.lib.Promise<google_auth_library.build.src.auth.oauth2client.IapPublicKeysResponse>;
	function verifySignedJwtWithCerts():Void;
	/**
		Verify the id token is signed with the correct certificate
		and is from the correct audience.
	**/
	function verifySignedJwtWithCertsAsync(jwt:String, certs:ts.AnyOf2<Certificates, google_auth_library.build.src.auth.oauth2client.PublicKeys>, ?requiredAudience:ts.AnyOf2<String, Array<String>>, ?issuers:Array<String>, ?maxExpiry:Float):js.lib.Promise<LoginTicket>;
	/**
		Returns a promise that resolves with AccessTokenResponse type if
		refreshHandler is defined.
		If not, nothing is returned.
	**/
	private var processAndValidateRefreshHandler : Dynamic;
	/**
		Returns true if a token is expired or will expire within
		eagerRefreshThresholdMillismilliseconds.
		If there is no expiry time, assumes the token is not expired or expiring.
	**/
	private function isTokenExpiring():Bool;
	function on(event:String, listener:(tokens:Credentials) -> Void):OAuth2Client;
	/**
		Alias for `emitter.on(eventName, listener)`.
	**/
	function addListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):OAuth2Client;
	/**
		Adds a **one-time**`listener` function for the event named `eventName`. The
		next time `eventName` is triggered, this listener is removed and then invoked.
		
		```js
		server.once('connection', (stream) => {
		   console.log('Ah, we have our first user!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
		
		By default, event listeners are invoked in the order they are added. The`emitter.prependOnceListener()` method can be used as an alternative to add the
		event listener to the beginning of the listeners array.
		
		```js
		const myEE = new EventEmitter();
		myEE.once('foo', () => console.log('a'));
		myEE.prependOnceListener('foo', () => console.log('b'));
		myEE.emit('foo');
		// Prints:
		//   b
		//   a
		```
	**/
	function once(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):OAuth2Client;
	/**
		Removes the specified `listener` from the listener array for the event named`eventName`.
		
		```js
		const callback = (stream) => {
		   console.log('someone connected!');
		};
		server.on('connection', callback);
		// ...
		server.removeListener('connection', callback);
		```
		
		`removeListener()` will remove, at most, one instance of a listener from the
		listener array. If any single listener has been added multiple times to the
		listener array for the specified `eventName`, then `removeListener()` must be
		called multiple times to remove each instance.
		
		Once an event is emitted, all listeners attached to it at the
		time of emitting are called in order. This implies that any`removeListener()` or `removeAllListeners()` calls _after_ emitting and_before_ the last listener finishes execution will
		not remove them from`emit()` in progress. Subsequent events behave as expected.
		
		```js
		const myEmitter = new MyEmitter();
		
		const callbackA = () => {
		   console.log('A');
		   myEmitter.removeListener('event', callbackB);
		};
		
		const callbackB = () => {
		   console.log('B');
		};
		
		myEmitter.on('event', callbackA);
		
		myEmitter.on('event', callbackB);
		
		// callbackA removes listener callbackB but it will still be called.
		// Internal listener array at time of emit [callbackA, callbackB]
		myEmitter.emit('event');
		// Prints:
		//   A
		//   B
		
		// callbackB is now removed.
		// Internal listener array [callbackA]
		myEmitter.emit('event');
		// Prints:
		//   A
		```
		
		Because listeners are managed using an internal array, calling this will
		change the position indices of any listener registered _after_ the listener
		being removed. This will not impact the order in which listeners are called,
		but it means that any copies of the listener array as returned by
		the `emitter.listeners()` method will need to be recreated.
		
		When a single function has been added as a handler multiple times for a single
		event (as in the example below), `removeListener()` will remove the most
		recently added instance. In the example the `once('ping')`listener is removed:
		
		```js
		const ee = new EventEmitter();
		
		function pong() {
		   console.log('pong');
		}
		
		ee.on('ping', pong);
		ee.once('ping', pong);
		ee.removeListener('ping', pong);
		
		ee.emit('ping');
		ee.emit('ping');
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):OAuth2Client;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):OAuth2Client;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):OAuth2Client;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to`Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):OAuth2Client;
	/**
		Adds the `listener` function to the _beginning_ of the listeners array for the
		event named `eventName`. No checks are made to see if the `listener` has
		already been added. Multiple calls passing the same combination of `eventName`and `listener` will result in the `listener` being added, and called, multiple
		times.
		
		```js
		server.prependListener('connection', (stream) => {
		   console.log('someone connected!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function prependListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):OAuth2Client;
	/**
		Adds a **one-time**`listener` function for the event named `eventName` to the_beginning_ of the listeners array. The next time `eventName` is triggered, this
		listener is removed, and then invoked.
		
		```js
		server.prependOnceListener('connection', (stream) => {
		   console.log('Ah, we have our first user!');
		});
		```
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function prependOnceListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):OAuth2Client;
	static var prototype : OAuth2Client;
	private static final GOOGLE_TOKEN_INFO_URL : String;
	/**
		The base URL for auth endpoints.
	**/
	private static final GOOGLE_OAUTH2_AUTH_BASE_URL_ : Dynamic;
	/**
		The base endpoint for token retrieval.
	**/
	private static final GOOGLE_OAUTH2_TOKEN_URL_ : Dynamic;
	/**
		The base endpoint to revoke tokens.
	**/
	private static final GOOGLE_OAUTH2_REVOKE_URL_ : Dynamic;
	/**
		Google Sign on certificates in PEM format.
	**/
	private static final GOOGLE_OAUTH2_FEDERATED_SIGNON_PEM_CERTS_URL_ : Dynamic;
	/**
		Google Sign on certificates in JWK format.
	**/
	private static final GOOGLE_OAUTH2_FEDERATED_SIGNON_JWK_CERTS_URL_ : Dynamic;
	/**
		Google Sign on certificates in JWK format.
	**/
	private static final GOOGLE_OAUTH2_IAP_PUBLIC_KEY_URL_ : Dynamic;
	/**
		Clock skew - five minutes in seconds
	**/
	private static final CLOCK_SKEW_SECS_ : Dynamic;
	/**
		Max Token Lifetime is one day in seconds
	**/
	private static final MAX_TOKEN_LIFETIME_SECS_ : Dynamic;
	/**
		The allowed oauth token issuers.
	**/
	private static final ISSUERS_ : Dynamic;
	/**
		Generates an URL to revoke the given token.
	**/
	static function getRevokeTokenUrl(token:String):String;
}