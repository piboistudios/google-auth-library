package google_auth_library;

typedef ProjectIdCallback = ts.AnyOf3<() -> Void, (err:js.lib.Error) -> Void, (err:js.lib.Error, projectId:String) -> Void>;