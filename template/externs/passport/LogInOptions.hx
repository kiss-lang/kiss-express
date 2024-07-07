package passport;

typedef LogInOptions = {
	/**
		Save login state in session, defaults to `true`.
	**/
	var session : Bool;
	@:optional
	var keepSessionInfo : Bool;
};