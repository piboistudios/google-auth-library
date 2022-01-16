package google_auth_library.build.src.auth.oauth2client;

typedef RequestMetadataCallback = ts.AnyOf3<(err:Null<gaxios.GaxiosError<Dynamic>>) -> Void, (err:Null<gaxios.GaxiosError<Dynamic>>, headers:Headers) -> Void, (err:Null<gaxios.GaxiosError<Dynamic>>, headers:Headers, res:gaxios.GaxiosResponse<ts.Undefined>) -> Void>;