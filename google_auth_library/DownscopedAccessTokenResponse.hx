package google_auth_library;

/**
	Internal interface for tracking and returning the Downscoped access token
	expiration time in epoch time (seconds).
**/
typedef DownscopedAccessTokenResponse = {
	@:optional
	var expirationTime : Float;
	@:optional
	var token : String;
	@:optional
	var res : gaxios.GaxiosResponse<Dynamic>;
};