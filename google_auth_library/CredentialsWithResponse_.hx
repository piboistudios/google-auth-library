package google_auth_library;

/**
	Internal interface for tracking the access token expiration time.
**/
typedef CredentialsWithResponse_ = {
	@:optional
	var res : gaxios.GaxiosResponse<Dynamic>;
	/**
		This field is only present if the access_type parameter was set to offline in the authentication request. For details, see Refresh tokens.
	**/
	@:optional
	var refresh_token : String;
	/**
		The time in ms at which this token is thought to expire.
	**/
	@:optional
	var expiry_date : Float;
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