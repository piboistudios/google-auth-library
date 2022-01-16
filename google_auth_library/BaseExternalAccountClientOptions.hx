package google_auth_library;

/**
	Base external account credentials json interface.
**/
typedef BaseExternalAccountClientOptions = {
	var type : String;
	var audience : String;
	var subject_token_type : String;
	@:optional
	var service_account_impersonation_url : String;
	var token_url : String;
	@:optional
	var token_info_url : String;
	@:optional
	var client_id : String;
	@:optional
	var client_secret : String;
	@:optional
	var quota_project_id : String;
	@:optional
	var workforce_pool_user_project : String;
};