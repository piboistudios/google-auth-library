package google_auth_library.build.src.auth.idtokenclient;

typedef IdTokenOptions = {
	/**
		The client to make the request to fetch an ID token.
	**/
	var idTokenProvider : google_auth_library.IdTokenProvider;
	/**
		The audience to use when requesting an ID token.
	**/
	var targetAudience : String;
};