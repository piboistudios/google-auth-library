package google_auth_library;

typedef IdTokenProvider = {
	dynamic function fetchIdToken(targetAudience:String):js.lib.Promise<String>;
};