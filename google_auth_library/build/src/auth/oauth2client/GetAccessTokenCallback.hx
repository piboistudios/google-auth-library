package google_auth_library.build.src.auth.oauth2client;

typedef GetAccessTokenCallback = ts.AnyOf3<(err:Null<gaxios.GaxiosError<Dynamic>>) -> Void, (err:Null<gaxios.GaxiosError<Dynamic>>, token:String) -> Void, (err:Null<gaxios.GaxiosError<Dynamic>>, token:String, res:gaxios.GaxiosResponse<Dynamic>) -> Void>;