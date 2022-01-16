package google_auth_library;

@:jsRequire("google-auth-library", "GCPEnv") @:enum extern abstract GCPEnv(String) from String to String {
	var APP_ENGINE;
	var KUBERNETES_ENGINE;
	var CLOUD_FUNCTIONS;
	var COMPUTE_ENGINE;
	var CLOUD_RUN;
	var NONE;
}