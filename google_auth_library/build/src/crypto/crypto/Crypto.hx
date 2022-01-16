package google_auth_library.build.src.crypto.crypto;

typedef Crypto = {
	function sha256DigestBase64(str:String):js.lib.Promise<String>;
	function randomBytesBase64(n:Float):String;
	function verify(pubkey:ts.AnyOf2<String, JwkCertificate>, data:ts.AnyOf2<String, global.Buffer>, signature:String):js.lib.Promise<Bool>;
	function sign(privateKey:ts.AnyOf2<String, JwkCertificate>, data:ts.AnyOf2<String, global.Buffer>):js.lib.Promise<String>;
	function decodeBase64StringUtf8(base64:String):String;
	function encodeBase64StringUtf8(text:String):String;
	/**
		Computes the SHA-256 hash of the provided string.
	**/
	function sha256DigestHex(str:String):js.lib.Promise<String>;
	/**
		Computes the HMAC hash of a message using the provided crypto key and the
		SHA-256 algorithm.
	**/
	function signWithHmacSha256(key:ts.AnyOf2<String, js.lib.ArrayBuffer>, msg:String):js.lib.Promise<js.lib.ArrayBuffer>;
};