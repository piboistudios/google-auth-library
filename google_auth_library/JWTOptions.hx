package google_auth_library;

typedef JWTOptions = {
	@:optional
	var email : String;
	@:optional
	var keyFile : String;
	@:optional
	var key : String;
	@:optional
	var keyId : String;
	@:optional
	var scopes : ts.AnyOf2<String, Array<String>>;
	@:optional
	var subject : String;
	@:optional
	var additionalClaims : { };
	@:optional
	var eagerRefreshThresholdMillis : Float;
	@:optional
	var forceRefreshOnFailure : Bool;
};