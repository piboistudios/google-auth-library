package google_auth_library.build.src.auth.oauth2client;

typedef FederatedSignonCertsResponse = {
	var certs : google_auth_library.Certificates;
	var format : CertificateFormat;
	@:optional
	var res : gaxios.GaxiosResponse<ts.Undefined>;
};