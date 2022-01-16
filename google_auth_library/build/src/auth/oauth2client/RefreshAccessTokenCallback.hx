package google_auth_library.build.src.auth.oauth2client;

typedef RefreshAccessTokenCallback = ts.AnyOf3<(err:Null<gaxios.GaxiosError<Dynamic>>) -> Void, (err:Null<gaxios.GaxiosError<Dynamic>>, credentials:google_auth_library.Credentials) -> Void, (err:Null<gaxios.GaxiosError<Dynamic>>, credentials:google_auth_library.Credentials, res:gaxios.GaxiosResponse<Dynamic>) -> Void>;