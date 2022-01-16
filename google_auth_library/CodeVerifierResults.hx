package google_auth_library;

/**
	The results from the `generateCodeVerifierAsync` method.  To learn more,
	See the sample:
	https://github.com/googleapis/google-auth-library-nodejs/blob/main/samples/oauth2-codeVerifier.js
**/
typedef CodeVerifierResults = {
	/**
		The code verifier that will be used when calling `getToken` to obtain a new
		access token.
	**/
	var codeVerifier : String;
	/**
		The code_challenge that should be sent with the `generateAuthUrl` call
		to obtain a verifiable authentication url.
	**/
	@:optional
	var codeChallenge : String;
};