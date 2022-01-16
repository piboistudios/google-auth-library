package google_auth_library.build.src.auth.oauth2client;

typedef RequestMetadataResponse = {
	var headers : Headers;
	@:optional
	var res : gaxios.GaxiosResponse<ts.Undefined>;
};