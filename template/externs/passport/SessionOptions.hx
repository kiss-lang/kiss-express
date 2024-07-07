package passport;

typedef SessionOptions = {
	/**
		Pause the request stream before deserializing the user
		object from the session.  Defaults to `false`.  Should
		be set to `true` in cases where middleware consuming the
		request body is configured after passport and the
		deserializeUser method is asynchronous.
	**/
	var pauseStream : Bool;
};