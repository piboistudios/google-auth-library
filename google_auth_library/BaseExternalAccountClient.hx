package google_auth_library;

/**
	Base external account client. This is used to instantiate AuthClients for
	exchanging external account credentials for GCP access token and authorizing
	requests to GCP APIs.
	The base class implements common logic for exchanging various type of
	external credentials for GCP access token. The logic of determining and
	retrieving the external credential based on the environment and
	credential_source will be left for the subclasses.
**/
@:jsRequire("google-auth-library", "BaseExternalAccountClient") extern class BaseExternalAccountClient extends google_auth_library.build.src.auth.authclient.AuthClient {
	/**
		Instantiate a BaseExternalAccountClient instance using the provided JSON
		object loaded from an external account credentials file.
	**/
	function new(options:BaseExternalAccountClientOptions, ?additionalOptions:RefreshOptions);
	/**
		OAuth scopes for the GCP access token to use. When not provided,
		the default https://www.googleapis.com/auth/cloud-platform is
		used.
	**/
	@:optional
	var scopes : ts.AnyOf2<String, Array<String>>;
	private var cachedAccessToken : Dynamic;
	private final audience : String;
	private final subjectTokenType : Dynamic;
	@:optional
	private final serviceAccountImpersonationUrl : Dynamic;
	private final stsCredential : Dynamic;
	@:optional
	private final clientAuth : Dynamic;
	@:optional
	private final workforcePoolUserProject : Dynamic;
	var projectNumber : Null<String>;
	/**
		The service account email to be impersonated, if available.
	**/
	function getServiceAccountEmail():Null<String>;
	/**
		Triggered when a external subject token is needed to be exchanged for a GCP
		access token via GCP STS endpoint.
		This abstract method needs to be implemented by subclasses depending on
		the type of external credential used.
	**/
	function retrieveSubjectToken():js.lib.Promise<String>;
	function getAccessToken():js.lib.Promise<google_auth_library.build.src.auth.oauth2client.GetAccessTokenResponse>;
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
	function getProjectId():js.lib.Promise<Null<String>>;
	/**
		Authenticates the provided HTTP request, processes it and resolves with the
		returned response.
	**/
	private function requestAsync<T>(opts:gaxios.GaxiosOptions, ?retry:Bool):js.lib.Promise<gaxios.GaxiosResponse<T>>;
	/**
		Forces token refresh, even if unexpired tokens are currently cached.
		External credentials are exchanged for GCP access tokens via the token
		exchange endpoint and other settings provided in the client options
		object.
		If the service_account_impersonation_url is provided, an additional
		step to exchange the external account GCP access token for a service
		account impersonated token is performed.
	**/
	private function refreshAccessTokenAsync():js.lib.Promise<CredentialsWithResponse_>;
	/**
		Returns the workload identity pool project number if it is determinable
		from the audience resource name.
	**/
	private var getProjectNumber : Dynamic;
	/**
		Exchanges an external account GCP access token for a service
		account impersonated access token using iamcredentials
		GenerateAccessToken API.
	**/
	private var getImpersonatedAccessToken : Dynamic;
	/**
		Returns whether the provided credentials are expired or not.
		If there is no expiry time, assumes the token is not expired or expiring.
	**/
	private var isExpired : Dynamic;
	private var getScopesArray : Dynamic;
	/**
		Checks whether Google APIs URL is valid.
	**/
	private var validateGoogleAPIsUrl : Dynamic;
	function on(event:String, listener:(tokens:Credentials) -> Void):BaseExternalAccountClient;
	/**
		Alias for `emitter.on(eventName, listener)`.
	**/
	function addListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):BaseExternalAccountClient;
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
	function once(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):BaseExternalAccountClient;
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
	function removeListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):BaseExternalAccountClient;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):BaseExternalAccountClient;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):BaseExternalAccountClient;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to`Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):BaseExternalAccountClient;
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
	function prependListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):BaseExternalAccountClient;
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
	function prependOnceListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):BaseExternalAccountClient;
	static var prototype : BaseExternalAccountClient;
}