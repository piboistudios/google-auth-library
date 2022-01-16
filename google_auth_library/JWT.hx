package google_auth_library;

@:jsRequire("google-auth-library", "JWT") extern class JWT extends OAuth2Client {
	/**
		JWT service account credentials.
		
		Retrieve access token using gtoken.
	**/
	@:overload(function(?email:String, ?keyFile:String, ?key:String, ?scopes:ts.AnyOf2<String, Array<String>>, ?subject:String, ?keyId:String):JWT { })
	function new(options:JWTOptions);
	@:optional
	var email : String;
	@:optional
	var keyFile : String;
	@:optional
	var key : String;
	@:optional
	var keyId : String;
	@:optional
	var defaultScopes : ts.AnyOf2<String, Array<String>>;
	@:optional
	var scopes : ts.AnyOf2<String, Array<String>>;
	@:optional
	var scope : String;
	@:optional
	var subject : String;
	@:optional
	var gtoken : gtoken.GoogleToken;
	@:optional
	var additionalClaims : { };
	@:optional
	var useJWTAccessWithScope : Bool;
	@:optional
	var defaultServicePath : String;
	@:optional
	private var access : Dynamic;
	/**
		Creates a copy of the credential with the specified scopes.
	**/
	function createScoped(?scopes:ts.AnyOf2<String, Array<String>>):JWT;
	/**
		Fetches an ID token.
	**/
	function fetchIdToken(targetAudience:String):js.lib.Promise<String>;
	/**
		Determine if there are currently scopes available.
	**/
	private var hasUserScopes : Dynamic;
	/**
		Are there any default or user scopes defined.
	**/
	private var hasAnyScopes : Dynamic;
	/**
		Get the initial access token using gToken.
	**/
	@:overload(function(callback:ts.AnyOf2<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, result:Credentials) -> Void>):Void { })
	function authorize():js.lib.Promise<Credentials>;
	private var authorizeAsync : Dynamic;
	/**
		Create a gToken if it doesn't already exist.
	**/
	private var createGToken : Dynamic;
	/**
		Create a JWT credentials instance using the given input options.
	**/
	function fromJSON(json:JWTInput):Void;
	/**
		Create a JWT credentials instance using the given input stream.
	**/
	@:overload(function(inputStream:node.stream.Readable, callback:ts.AnyOf2<() -> Void, (err:js.lib.Error) -> Void>):Void { })
	function fromStream(inputStream:node.stream.Readable):js.lib.Promise<ts.Undefined>;
	private var fromStreamAsync : Dynamic;
	/**
		Creates a JWT credentials instance using an API Key for authentication.
	**/
	function fromAPIKey(apiKey:String):Void;
	/**
		Using the key or keyFile on the JWT client, obtain an object that contains
		the key and the client email.
	**/
	function getCredentials():js.lib.Promise<CredentialBody>;
	function on(event:String, listener:(tokens:Credentials) -> Void):JWT;
	/**
		Alias for `emitter.on(eventName, listener)`.
	**/
	function addListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):JWT;
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
	function once(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):JWT;
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
	function removeListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):JWT;
	/**
		Alias for `emitter.removeListener()`.
	**/
	function off(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):JWT;
	/**
		Removes all listeners, or those of the specified `eventName`.
		
		It is bad practice to remove listeners added elsewhere in the code,
		particularly when the `EventEmitter` instance was created by some other
		component or module (e.g. sockets or file streams).
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):JWT;
	/**
		By default `EventEmitter`s will print a warning if more than `10` listeners are
		added for a particular event. This is a useful default that helps finding
		memory leaks. The `emitter.setMaxListeners()` method allows the limit to be
		modified for this specific `EventEmitter` instance. The value can be set to`Infinity` (or `0`) to indicate an unlimited number of listeners.
		
		Returns a reference to the `EventEmitter`, so that calls can be chained.
	**/
	function setMaxListeners(n:Float):JWT;
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
	function prependListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):JWT;
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
	function prependOnceListener(eventName:ts.AnyOf2<String, js.lib.Symbol>, listener:(args:haxe.extern.Rest<Dynamic>) -> Void):JWT;
	static var prototype : JWT;
}