package google_auth_library.build.src.auth.baseexternalclient;

/**
	Interface defining the project information response returned by the cloud
	resource manager.
	https://cloud.google.com/resource-manager/reference/rest/v1/projects#Project
**/
typedef ProjectInfo = {
	var projectNumber : String;
	var projectId : String;
	var lifecycleState : String;
	var name : String;
	@:optional
	var createTime : String;
	var parent : { };
};