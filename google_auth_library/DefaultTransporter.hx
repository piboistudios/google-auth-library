package google_auth_library;

@:jsRequire("google-auth-library", "DefaultTransporter") extern class DefaultTransporter {
	function new();
	/**
		Configures request options before making a request.
	**/
	function configure(?opts:gaxios.GaxiosOptions):gaxios.GaxiosOptions;
	/**
		Makes a request using Gaxios with given options.
	**/
	@:overload(function<T>(opts:gaxios.GaxiosOptions, ?callback:google_auth_library.build.src.transporters.BodyResponseCallback<T>):Void { })
	function request<T>(opts:gaxios.GaxiosOptions):gaxios.GaxiosPromise<T>;
	/**
		Changes the error to include details from the body.
	**/
	private var processError : Dynamic;
	static var prototype : DefaultTransporter;
	/**
		Default user agent.
	**/
	static final USER_AGENT : String;
}