package google_auth_library;

/**
	Dummy class with no constructor. Developers are expected to use fromJSON.
**/
@:jsRequire("google-auth-library", "ExternalAccountClient") extern class ExternalAccountClient {
	function new();
	static var prototype : ExternalAccountClient;
	/**
		This static method will instantiate the
		corresponding type of external account credential depending on the
		underlying credential source.
	**/
	static function fromJSON(options:ExternalAccountClientOptions, ?additionalOptions:RefreshOptions):Null<BaseExternalAccountClient>;
}