package passport;

typedef SessionStrategyOptions = {
	/**
		Determines what property ("key") on
		the session data where login session data is located.
		The login session is stored and read from `req.session[key]`.
		Default `'passport'`.
	**/
	var key : String;
};