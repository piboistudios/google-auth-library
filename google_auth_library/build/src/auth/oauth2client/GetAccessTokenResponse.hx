package google_auth_library.build.src.auth.oauth2client;

typedef GetAccessTokenResponse = {
	@:optional
	var token : String;
	@:optional
	var res : gaxios.GaxiosResponse<Dynamic>;
};