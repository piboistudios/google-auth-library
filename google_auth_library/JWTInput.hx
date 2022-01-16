package google_auth_library;

typedef JWTInput = {
	@:optional
	var type : String;
	@:optional
	var client_email : String;
	@:optional
	var private_key : String;
	@:optional
	var private_key_id : String;
	@:optional
	var project_id : String;
	@:optional
	var client_id : String;
	@:optional
	var client_secret : String;
	@:optional
	var refresh_token : String;
	@:optional
	var quota_project_id : String;
};