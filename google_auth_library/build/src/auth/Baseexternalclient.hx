package google_auth_library.build.src.auth;

@:jsRequire("google-auth-library/build/src/auth/baseexternalclient") @valueModuleOnly extern class Baseexternalclient {
	/**
		Offset to take into account network delays and server clock skews.
	**/
	static final EXPIRATION_TIME_OFFSET : Float;
	/**
		The credentials JSON file type for external account clients.
		There are 3 types of JSON configs:
		1. authorized_user => Google end user credential
		2. service_account => Google service account credential
		3. external_Account => non-GCP service (eg. AWS, Azure, K8s)
	**/
	static final EXTERNAL_ACCOUNT_TYPE : String;
	/**
		Cloud resource manager URL used to retrieve project information.
	**/
	static final CLOUD_RESOURCE_MANAGER : String;
}