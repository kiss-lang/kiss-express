package passport;

typedef SessionStrategy = {
	/**
		The name of the strategy, set to `'session'`.
	**/
	final name : String;
	/**
		Authenticate request based on current session data.
		
		When login session data is present in the session, that data will be used to
		restore login state across across requests by calling the deserialize user
		function.
		
		If login session data is not present, the request will be passed to the next
		middleware, rather than failing authentication - which is the behavior of
		most other strategies.  This deviation allows session authentication to be
		performed at the application-level, rather than the individual route level,
		while allowing both authenticated and unauthenticated requests and rendering
		responses accordingly.  Routes that require authentication will need to guard
		that condition.
		
		This function is **protected**, and should _not_ be called directly.  Instead,
		use `passport.authenticate()` middleware and specify the {@link SessionStrategy.name `name`}
		of this strategy and any options.
		
		Options:
		- `pauseStream` When `true`, data events on
		                 the request will be paused, and then resumed after the asynchronous
		                 `deserializeUser` function has completed.  This is only necessary in
		                 cases where later middleware in the stack are listening for events,
		                 and ensures that those events are not missed.
		                 Default `false`.
	**/
	function authenticate(req:node.http.IncomingMessage, ?options:{ /** Pause the request stream before deserializing the userobject from the session.  Defaults to `false`.  Shouldbe set to `true` in cases where middleware consuming therequest body is configured after passport and thedeserializeUser method is asynchronous. **/ @:optional var pauseStream : Bool; }):Void;
};