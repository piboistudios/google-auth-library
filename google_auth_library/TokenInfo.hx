package google_auth_library;

typedef TokenInfo = {
	/**
		The application that is the intended user of the access token.
	**/
	var aud : String;
	/**
		This value lets you correlate profile information from multiple Google
		APIs. It is only present in the response if you included the profile scope
		in your request in step 1. The field value is an immutable identifier for
		the logged-in user that can be used to create and manage user sessions in
		your application. The identifier is the same regardless of which client ID
		is used to retrieve it. This enables multiple applications in the same
		organization to correlate profile information.
	**/
	@:optional
	var user_id : String;
	/**
		An array of scopes that the user granted access to.
	**/
	var scopes : Array<String>;
	/**
		The datetime when the token becomes invalid.
	**/
	var expiry_date : Float;
	/**
		An identifier for the user, unique among all Google accounts and never
		reused. A Google account can have multiple emails at different points in
		time, but the sub value is never changed. Use sub within your application
		as the unique-identifier key for the user.
	**/
	@:optional
	var sub : String;
	/**
		The client_id of the authorized presenter. This claim is only needed when
		the party requesting the ID token is not the same as the audience of the ID
		token. This may be the case at Google for hybrid apps where a web
		application and Android app have a different client_id but share the same
		project.
	**/
	@:optional
	var azp : String;
	/**
		Indicates whether your application can refresh access tokens
		when the user is not present at the browser. Valid parameter values are
		'online', which is the default value, and 'offline'. Set the value to
		'offline' if your application needs to refresh access tokens when the user
		is not present at the browser. This value instructs the Google
		authorization server to return a refresh token and an access token the
		first time that your application exchanges an authorization code for
		tokens.
	**/
	@:optional
	var access_type : String;
	/**
		The user's email address. This value may not be unique to this user and
		is not suitable for use as a primary key. Provided only if your scope
		included the email scope value.
	**/
	@:optional
	var email : String;
	/**
		True if the user's e-mail address has been verified; otherwise false.
	**/
	@:optional
	var email_verified : Bool;
};