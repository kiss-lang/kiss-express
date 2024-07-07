package passport;

typedef InitializeOptions = {
	/**
		Determines what property on `req`
		will be set to the authenticated user object.
		Default `'user'`.
	**/
	@:optional
	var userProperty : String;
	/**
		When `true`, enables a compatibility layer
		for packages that depend on `passport@0.4.x` or earlier.
		Default `true`.
	**/
	@:optional
	var compat : Bool;
};