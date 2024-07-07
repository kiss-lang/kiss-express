package passport;

typedef AuthenticateOptions = {
	@:optional
	var authInfo : Bool;
	/**
		Assign the object provided by the verify callback to given property.
	**/
	@:optional
	var assignProperty : String;
	/**
		True to flash failure messages
		or a string to use as a flash message for failures
		(overrides any from the strategy itself).
	**/
	@:optional
	var failureFlash : ts.AnyOf2<String, Bool>;
	/**
		True to store failure message in `req.session.messages`,
		or a string to use as override message for failure.
	**/
	@:optional
	var failureMessage : ts.AnyOf2<String, Bool>;
	/**
		After failed login, redirect to given URL.
	**/
	@:optional
	var failureRedirect : String;
	@:optional
	var failWithError : Bool;
	@:optional
	var keepSessionInfo : Bool;
	/**
		Save login state in session, defaults to `true`.
	**/
	@:optional
	var session : Bool;
	@:optional
	var scope : ts.AnyOf2<String, Array<String>>;
	/**
		True to flash success messages
		or a string to use as a flash message for success
		(overrides any from the strategy itself).
	**/
	@:optional
	var successFlash : ts.AnyOf2<String, Bool>;
	/**
		True to store success message in `req.session.messages`,
		or a string to use as override message for success.
	**/
	@:optional
	var successMessage : ts.AnyOf2<String, Bool>;
	/**
		After successful login, redirect to given URL.
	**/
	@:optional
	var successRedirect : String;
	@:optional
	var successReturnToOrRedirect : String;
	@:optional
	var state : String;
	/**
		Pause the request stream before deserializing the user
		object from the session.  Defaults to `false`.  Should
		be set to `true` in cases where middleware consuming the
		request body is configured after passport and the
		deserializeUser method is asynchronous.
	**/
	@:optional
	var pauseStream : Bool;
	/**
		Determines what property on `req`
		will be set to the authenticated user object.
		Default `'user'`.
	**/
	@:optional
	var userProperty : String;
	@:optional
	var passReqToCallback : Bool;
	@:optional
	var prompt : String;
};