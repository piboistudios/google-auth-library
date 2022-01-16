package google_auth_library;

typedef GoogleAuthOptions = {
	/**
		Path to a .json, .pem, or .p12 key file
	**/
	@:optional
	var keyFilename : String;
	/**
		Path to a .json, .pem, or .p12 key file
	**/
	@:optional
	var keyFile : String;
	/**
		Object containing client_email and private_key properties, or the
		external account client options.
	**/
	@:optional
	var credentials : ts.AnyOf3<CredentialBody, IdentityPoolClientOptions, AwsClientOptions>;
	/**
		Options object passed to the constructor of the client
	**/
	@:optional
	var clientOptions : ts.AnyOf4<JWTOptions, OAuth2ClientOptions, UserRefreshClientOptions, ImpersonatedOptions>;
	/**
		Required scopes for the desired API request
	**/
	@:optional
	var scopes : ts.AnyOf2<String, Array<String>>;
	/**
		Your project ID.
	**/
	@:optional
	var projectId : String;
};