package google_auth_library;

/**
	Url-sourced/file-sourced credentials json interface.
	This is used for K8s and Azure workloads.
**/
typedef IdentityPoolClientOptions = {
	var credential_source : {
		@:optional
		var file : String;
		@:optional
		var url : String;
		@:optional
		var headers : { };
		@:optional
		var format : {
			var type : SubjectTokenFormatType;
			@:optional
			var subject_token_field_name : String;
		};
	};
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