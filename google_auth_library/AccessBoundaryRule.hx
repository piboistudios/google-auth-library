package google_auth_library;

/**
	Defines an upper bound of permissions on a particular resource.
**/
typedef AccessBoundaryRule = {
	var availablePermissions : Array<String>;
	var availableResource : String;
	@:optional
	var availabilityCondition : AvailabilityCondition;
};