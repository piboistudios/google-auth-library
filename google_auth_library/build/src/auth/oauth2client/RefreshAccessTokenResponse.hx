package google_auth_library.build.src.auth.oauth2client;

typedef RefreshAccessTokenResponse = {
	var credentials : google_auth_library.Credentials;
	var res : Null<gaxios.GaxiosResponse<Dynamic>>;
};