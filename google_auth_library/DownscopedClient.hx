package google_auth_library;

/**
	Defines a set of Google credentials that are downscoped from an existing set
	of Google OAuth2 credentials. This is useful to restrict the Identity and
	Access Management (IAM) permissions that a short-lived credential can use.
	The common pattern of usage is to have a token broker with elevated access
	generate these downscoped credentials from higher access source credentials
	and pass the downscoped short-lived access tokens to a token consumer via
	some secure authenticated channel for limited access to Google Cloud Storage
	resources.
**/
@:jsRequire("google-auth-library", "DownscopedClient") extern class DownscopedClient extends google_auth_library.build.src.auth.authclient.AuthClient {
	/**
		Instantiates a downscoped client object using the provided source
		AuthClient and credential access boundary rules.
		To downscope permissions of a source AuthClient, a Credential Access
		Boundary that specifies which resources the new credential can access, as
		well as an upper bound on the permissions that are available on each
		resource, has to be defined. A downscoped client can then be instantiated
		using the source AuthClient and the Credential Access Boundary.
	**/
	function new(authClient:google_auth_library.build.src.auth.authclient.AuthClient, credentialAccessBoundary:CredentialAccessBoundary, ?additionalOptions:RefreshOptions, ?quotaProjectId:String);
	private final authClient : Dynamic;
	private final credentialAccessBoundary : Dynamic;
	private var cachedDownscopedAccessToken : Dynamic;
	private final stsCredential : Dynamic;
	function getAccessToken():js.lib.Promise<DownscopedAccessTokenResponse>;
	/**
		The main authentication interface. It takes an optional url which when
		present is the endpoint being accessed, and returns a Promise which
		resolves with authorization header fields.
		
		The result has the form:
		{ Authorization: 'Bearer <access_token_value>' }
	**/
	function getRequestHeaders():js.lib.Promise<google_auth_library.build.src.auth.oauth2client.Headers>;
	/**
		Provides a request implementation with OAuth 2.0 flow. In cases of
		HTTP 401 and 403 responses, it automatically asks for a new access token
		and replays the unsuccessful request.
	**/
	@:overload(function<T>(opts:gaxios.GaxiosOptions, callback:google_auth_library.build.src.transporters.BodyResponseCallback<T>):Void { })
	function request<T>(opts:gaxios.GaxiosOptions):gaxios.GaxiosPromise<T>;
	/**
		Authenticates the provided HTTP request, processes it and resolves with the
		returned response.
	**/
	private function requestAsync<T>(opts:gaxios.GaxiosOptions, ?retry:Bool):js.lib.Promise<gaxios.GaxiosResponse<T>>;
	/**
		Forces token refresh, even if unexpired tokens are currently cached.
		GCP access tokens are retrieved from authclient object/source credential.
		Then GCP access tokens are exchanged for downscoped access tokens via the
		token exchange endpoint.
	**/
	private function refreshAccessTokenAsync():js.lib.Promise<CredentialsWithResponse>;
	/**
		Returns whether the provided credentials are expired or not.
		If there is no expiry time, assumes the token is not expired or expiring.
	**/
	private var isExpired : Dynamic;
	function on(event:String, listener:(tokens:Credentials) -> Void):DownscopedClient;
	/**
		Alias for `emitter.on(eventName, listener)`.
	**/
	function addListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):DownscopedClient;
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
	function once(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):DownscopedClient;
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
	function removeListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):DownscopedClient;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):DownscopedClient;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):DownscopedClient;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to`Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):DownscopedClient;
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
	function prependListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):DownscopedClient;
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
	function prependOnceListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):DownscopedClient;
	static var prototype : DownscopedClient;
}