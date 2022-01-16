package google_auth_library.build.src.auth;

@:jsRequire("google-auth-library/build/src/auth/envDetect") @valueModuleOnly extern class EnvDetect {
	static function clear():Void;
	static function getEnv():js.lib.Promise<google_auth_library.GCPEnv>;
}