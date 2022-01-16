package google_auth_library;

/**
	Defines an upper bound of permissions available for a GCP credential.
**/
typedef CredentialAccessBoundary = {
	var accessBoundary : {
		var accessBoundaryRules : Array<AccessBoundaryRule>;
	};
};