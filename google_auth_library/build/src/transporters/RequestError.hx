package google_auth_library.build.src.transporters;

typedef RequestError = {
	var errors : Array<js.lib.Error>;
	@:optional
	var code : String;
	@:optional
	var response : gaxios.GaxiosResponse<Dynamic>;
	var config : gaxios.GaxiosOptions;
	var name : String;
	var message : String;
	@:optional
	var stack : String;
};