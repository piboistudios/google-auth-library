package google_auth_library;

/**
	An optional condition that can be used as part of a
	CredentialAccessBoundary to further restrict permissions.
**/
typedef AvailabilityCondition = {
	var expression : String;
	@:optional
	var title : String;
	@:optional
	var description : String;
};