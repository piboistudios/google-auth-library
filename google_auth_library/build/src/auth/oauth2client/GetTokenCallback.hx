package google_auth_library.build.src.auth.oauth2client;

typedef GetTokenCallback = ts.AnyOf3<(err:Null<gaxios.GaxiosError<Dynamic>>) -> Void, (err:Null<gaxios.GaxiosError<Dynamic>>, token:google_auth_library.Credentials) -> Void, (err:Null<gaxios.GaxiosError<Dynamic>>, token:google_auth_library.Credentials, res:gaxios.GaxiosResponse<Dynamic>) -> Void>;