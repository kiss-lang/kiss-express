package global.express;

typedef AuthenticatedRequest = {
	var user : User;
	@:optional
	var authInfo : AuthInfo;
	/**
		Initiate a login session for `user`.
		
		Options:
		   - `session`  Save login state in session, defaults to `true`.
		
		Examples:
		
		     req.logIn(user, { session: false });
		
		     req.logIn(user, function(err) {
		       if (err) { throw err; }
		       // session saved
		     });
	**/
	@:overload(function(user:User, options:passport.LogInOptions, done:(err:Dynamic) -> Void):Void { })
	function login(user:User, done:(err:Dynamic) -> Void):Void;
	/**
		Initiate a login session for `user`.
		
		Options:
		   - `session`  Save login state in session, defaults to `true`.
		
		Examples:
		
		     req.logIn(user, { session: false });
		
		     req.logIn(user, function(err) {
		       if (err) { throw err; }
		       // session saved
		     });
	**/
	@:overload(function(user:User, options:passport.LogInOptions, done:(err:Dynamic) -> Void):Void { })
	function logIn(user:User, done:(err:Dynamic) -> Void):Void;
	/**
		Terminate an existing login session.
	**/
	@:overload(function(done:(err:Dynamic) -> Void):Void { })
	function logout(options:passport.LogOutOptions, done:(err:Dynamic) -> Void):Void;
	/**
		Terminate an existing login session.
	**/
	@:overload(function(done:(err:Dynamic) -> Void):Void { })
	function logOut(options:passport.LogOutOptions, done:(err:Dynamic) -> Void):Void;
	/**
		Test if request is authenticated.
	**/
	function isAuthenticated():Bool;
	/**
		Test if request is unauthenticated.
	**/
	function isUnauthenticated():Bool;
};