package google_auth_library.build.src.crypto;

@:jsRequire("google-auth-library/build/src/crypto/crypto") @valueModuleOnly extern class Crypto {
	static function createCrypto():google_auth_library.build.src.crypto.crypto.Crypto;
	static function hasBrowserCrypto():Bool;
	/**
		Converts an ArrayBuffer to a hexadecimal string.
	**/
	static function fromArrayBufferToHex(arrayBuffer:js.lib.ArrayBuffer):String;
}