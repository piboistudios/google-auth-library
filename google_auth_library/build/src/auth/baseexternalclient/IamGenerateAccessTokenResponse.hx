package google_auth_library.build.src.auth.baseexternalclient;

/**
	Interface defining the successful response for iamcredentials
	generateAccessToken API.
	https://cloud.google.com/iam/docs/reference/credentials/rest/v1/projects.serviceAccounts/generateAccessToken
**/
typedef IamGenerateAccessTokenResponse = {
	var accessToken : String;
	var expireTime : String;
};