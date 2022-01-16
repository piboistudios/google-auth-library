package google_auth_library.build.src.auth.oauth2client;

typedef IapPublicKeysResponse = {
	var pubkeys : PublicKeys;
	@:optional
	var res : gaxios.GaxiosResponse<ts.Undefined>;
};