package google_auth_library.build.src.auth.oauth2client;

typedef GetFederatedSignonCertsCallback = ts.AnyOf3<(err:Null<gaxios.GaxiosError<Dynamic>>) -> Void, (err:Null<gaxios.GaxiosError<Dynamic>>, certs:google_auth_library.Certificates) -> Void, (err:Null<gaxios.GaxiosError<Dynamic>>, certs:google_auth_library.Certificates, response:gaxios.GaxiosResponse<ts.Undefined>) -> Void>;