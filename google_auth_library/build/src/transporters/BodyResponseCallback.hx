package google_auth_library.build.src.transporters;

typedef BodyResponseCallback<T> = ts.AnyOf2<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, res:gaxios.GaxiosResponse<T>) -> Void>;