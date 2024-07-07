package express_session;

@:jsRequire("express-session", "Session") extern class Session {
	private function new(request:global.express.Request, data:SessionData);
	/**
		Each session has a unique ID associated with it.
		This property is an alias of `req.sessionID` and cannot be modified.
		It has been added to make the session ID accessible from the session object.
	**/
	var id : String;
	/**
		Each session has a unique cookie object accompany it.
		This allows you to alter the session cookie per visitor.
		For example we can set `req.session.cookie.expires` to `false` to enable the cookie to remain for only the duration of the user-agent.
	**/
	var cookie : Cookie;
	/**
		To regenerate the session simply invoke the method. Once complete, a new SID and `Session` instance will be initialized at `req.session` and the `callback` will be invoked.
	**/
	function regenerate(callback:(err:Dynamic) -> Void):Session;
	/**
		Destroys the session and will unset the `req.session` property. Once complete, the `callback` will be invoked.
	**/
	function destroy(callback:(err:Dynamic) -> Void):Session;
	/**
		Reloads the session data from the store and re-populates the `req.session` object. Once complete, the `callback` will be invoked.
	**/
	function reload(callback:(err:Dynamic) -> Void):Session;
	/**
		Resets the cookie's `maxAge` to `originalMaxAge`
	**/
	function resetMaxAge():Session;
	/**
		Save the session back to the store, replacing the contents on the store with the contents in memory
		   (though a store may do something else - consult the store's documentation for exact behavior).
		
		This method is automatically called at the end of the HTTP response if the session data has been altered
		   (though this behavior can be altered with various options in the middleware constructor).
		Because of this, typically this method does not need to be called.
		There are some cases where it is useful to call this method, for example: redirects, long-lived requests or in WebSockets.
	**/
	function save(?callback:(err:Dynamic) -> Void):Session;
	/**
		Updates the `maxAge` property. Typically this is not necessary to call, as the session middleware does this for you.
	**/
	function touch():Session;
	static var prototype : Session;
}