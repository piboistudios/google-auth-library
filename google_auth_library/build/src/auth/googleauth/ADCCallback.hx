package google_auth_library.build.src.auth.googleauth;

typedef ADCCallback = ts.AnyOf3<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, credential:google_auth_library.build.src.auth.authclient.AuthClient) -> Void, (err:Null<js.lib.Error>, credential:google_auth_library.build.src.auth.authclient.AuthClient, projectId:String) -> Void>;