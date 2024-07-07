package passport;

/**
	An optional callback supplied to allow the application to override
	the default manner in which authentication attempts are handled.  The
	callback has the following signature, where `user` will be set to the
	authenticated user on a successful authentication attempt, or `false`
	otherwise.  An optional `info` argument will be passed, containing additional
	details provided by the strategy's verify callback - this could be information about
	a successful authentication or a challenge message for a failed authentication.
	An optional `status` argument will be passed when authentication fails - this could
	be a HTTP response code for a remote authentication failure or similar.
	
	     app.get('/protected', function(req, res, next) {
	       passport.authenticate('local', function callback(err, user, info, status) {
	         if (err) { return next(err) }
	         if (!user) { return res.redirect('/signin') }
	         res.redirect('/account');
	       })(req, res, next);
	     });
	
	Note that if a callback is supplied, it becomes the application's
	responsibility to log-in the user, establish a session, and otherwise perform
	the desired operations.
**/
typedef AuthenticateCallback = ts.AnyOf4<(err:Dynamic) -> Dynamic, (err:Dynamic, user:ts.AnyOf2<Bool, global.express.User>) -> Dynamic, (err:Dynamic, user:ts.AnyOf2<Bool, global.express.User>, info:ts.AnyOf3<String, Dynamic, Array<Null<String>>>) -> Dynamic, (err:Dynamic, user:ts.AnyOf2<Bool, global.express.User>, info:ts.AnyOf3<String, Dynamic, Array<Null<String>>>, status:ts.AnyOf2<Float, Array<Null<Float>>>) -> Dynamic>;