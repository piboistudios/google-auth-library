package google_auth_library.build.src.transporters;

typedef Transporter = {
	@:overload(function<T>(opts:gaxios.GaxiosOptions, ?callback:BodyResponseCallback<T>):Void { })
	@:overload(function<T>(opts:gaxios.GaxiosOptions, ?callback:BodyResponseCallback<T>):ts.AnyOf2<ts.Undefined, gaxios.GaxiosPromise<Dynamic>> { })
	function request<T>(opts:gaxios.GaxiosOptions):gaxios.GaxiosPromise<T>;
};