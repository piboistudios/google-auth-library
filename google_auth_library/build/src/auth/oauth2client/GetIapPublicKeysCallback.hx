package google_auth_library.build.src.auth.oauth2client;

typedef GetIapPublicKeysCallback = ts.AnyOf3<(err:Null<gaxios.GaxiosError<Dynamic>>) -> Void, (err:Null<gaxios.GaxiosError<Dynamic>>, pubkeys:PublicKeys) -> Void, (err:Null<gaxios.GaxiosError<Dynamic>>, pubkeys:PublicKeys, response:gaxios.GaxiosResponse<ts.Undefined>) -> Void>;