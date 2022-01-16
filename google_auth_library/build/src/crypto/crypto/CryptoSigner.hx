package google_auth_library.build.src.crypto.crypto;

typedef CryptoSigner = {
	function update(data:String):Void;
	function sign(key:String, outputFormat:String):String;
};