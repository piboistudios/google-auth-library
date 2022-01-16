package google_auth_library.build.src.auth.googleauth;

typedef CredentialCallback = ts.AnyOf2<(err:Null<js.lib.Error>) -> Void, (err:Null<js.lib.Error>, result:JSONClient) -> Void>;