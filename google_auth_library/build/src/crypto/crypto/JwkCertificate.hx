package google_auth_library.build.src.crypto.crypto;

typedef JwkCertificate = {
	var kty : String;
	var alg : String;
	@:optional
	var use : String;
	var kid : String;
	var n : String;
	var e : String;
};