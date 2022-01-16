package google_auth_library;

typedef CredentialRequest = {
	/**
		This field is only present if the access_type parameter was set to offline in the authentication request. For details, see Refresh tokens.
	**/
	@:optional
	var refresh_token : String;
	/**
		A token that can be sent to a Google API.
	**/
	@:optional
	var access_token : String;
	/**
		Identifies the type of token returned. At this time, this field always has the value Bearer.
	**/
	@:optional
	var token_type : String;
	/**
		The remaining lifetime of the access token in seconds.
	**/
	@:optional
	var expires_in : Float;
	/**
		A JWT that contains identity information about the user that is digitally signed by Google.
	**/
	@:optional
	var id_token : String;
	/**
		The scopes of access granted by the access_token expressed as a list of space-delimited, case-sensitive strings.
	**/
	@:optional
	var scope : String;
};