package google_auth_library.build.src.auth.googleauth;

/**
	Defines all types of explicit clients that are determined via ADC JSON
	config file.
**/
typedef JSONClient = ts.AnyOf4<google_auth_library.JWT, google_auth_library.Impersonated, google_auth_library.UserRefreshClient, google_auth_library.BaseExternalAccountClient>;