package google_auth_library.build.src.auth;

@:jsRequire("google-auth-library/build/src/auth/downscopedclient") @valueModuleOnly extern class Downscopedclient {
	/**
		The maximum number of access boundary rules a Credential Access Boundary
		can contain.
	**/
	static final MAX_ACCESS_BOUNDARY_RULES_COUNT : Int;
	/**
		Offset to take into account network delays and server clock skews.
	**/
	static final EXPIRATION_TIME_OFFSET : Float;
}