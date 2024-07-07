package passport;

typedef Framework<InitializeRet, AuthenticateRet, AuthorizeRet> = {
	/**
		Passport initialization.
		
		Intializes Passport for incoming requests, allowing authentication strategies
		to be applied.
		
		If sessions are being utilized, applications must set up Passport with
		functions to serialize a user into and out of a session.  For example, a
		common pattern is to serialize just the user ID into the session (due to the
		fact that it is desirable to store the minimum amount of data in a session).
		When a subsequent request arrives for the session, the full User object can
		be loaded from the database by ID.
		
		Note that additional middleware is required to persist login state, so we
		must use the `connect.session()` middleware _before_ `passport.initialize()`.
		
		If sessions are being used, this middleware must be in use by the
		Connect/Express application for Passport to operate.  If the application is
		entirely stateless (not using sessions), this middleware is not necessary,
		but its use will not have any adverse impact.
		
		Examples:
		
		     app.use(connect.cookieParser());
		     app.use(connect.session({ secret: 'keyboard cat' }));
		     app.use(passport.initialize());
		     app.use(passport.session());
		
		     passport.serializeUser(function(user, done) {
		       done(null, user.id);
		     });
		
		     passport.deserializeUser(function(id, done) {
		       User.findById(id, function (err, user) {
		         done(err, user);
		       });
		     });
	**/
	function initialize(passport:Authenticator<InitializeRet, AuthenticateRet, AuthorizeRet, AuthenticateOptions>, ?options:Dynamic):(args:haxe.extern.Rest<Dynamic>) -> InitializeRet;
	/**
		Authenticates requests.
		
		Applies the `name`ed strategy (or strategies) to the incoming request, in
		order to authenticate the request.  If authentication is successful, the user
		will be logged in and populated at `req.user` and a session will be
		established by default.  If authentication fails, an unauthorized response
		will be sent.
		
		Options:
		   - `session`          Save login state in session, defaults to `true`.
		   - `successRedirect`  After successful login, redirect to given URL.
		   - `successMessage`   True to store success message in
		                        `req.session.messages`, or a string to use as override
		                        message for success.
		   - `successFlash`     True to flash success messages or a string to use as a flash
		                        message for success (overrides any from the strategy itself).
		   - `failureRedirect`  After failed login, redirect to given URL.
		   - `failureMessage`   True to store failure message in
		                        `req.session.messages`, or a string to use as override
		                        message for failure.
		   - `failureFlash`     True to flash failure messages or a string to use as a flash
		                        message for failures (overrides any from the strategy itself).
		   - `assignProperty`   Assign the object provided by the verify callback to given property.
		
		An optional `callback` can be supplied to allow the application to override
		the default manner in which authentication attempts are handled.  The
		callback has the following signature, where `user` will be set to the
		authenticated user on a successful authentication attempt, or `false`
		otherwise.  An optional `info` argument will be passed, containing additional
		details provided by the strategy's verify callback - this could be information about
		a successful authentication or a challenge message for a failed authentication.
		An optional `status` argument will be passed when authentication fails - this could
		be a HTTP response code for a remote authentication failure or similar.
		
		     app.get('/protected', function(req, res, next) {
		       passport.authenticate('local', function(err, user, info, status) {
		         if (err) { return next(err) }
		         if (!user) { return res.redirect('/signin') }
		         res.redirect('/account');
		       })(req, res, next);
		     });
		
		Note that if a callback is supplied, it becomes the application's
		responsibility to log-in the user, establish a session, and otherwise perform
		the desired operations.
		
		Examples:
		
		     passport.authenticate('local', { successRedirect: '/', failureRedirect: '/login' });
		
		     passport.authenticate('basic', { session: false });
		
		     passport.authenticate('twitter');
	**/
	function authenticate(passport:Authenticator<InitializeRet, AuthenticateRet, AuthorizeRet, AuthenticateOptions>, name:String, ?options:Dynamic, ?callback:(args:haxe.extern.Rest<Dynamic>) -> Dynamic):(args:haxe.extern.Rest<Dynamic>) -> AuthenticateRet;
	/**
		Create third-party service authorization middleware.
		
		Returns middleware that will authorize a connection to a third-party service.
		
		This middleware is identical to using {@link Authenticator.authenticate `authenticate()`}
		middleware with the `assignProperty` option set to `'account'`.  This is
		useful when a user is already authenticated (for example, using a username
		and password) and they want to connect their account with a third-party
		service.
		
		In this scenario, the user's third-party account will be set at
		`req.account`, and the existing `req.user` and login session data will be
		be left unmodified.  A route handler can then link the third-party account to
		the existing local account.
		
		All arguments to this function behave identically to those accepted by
		{@link Authenticator.authenticate `Authenticator.authenticate`}.
	**/
	@:optional
	function authorize(passport:Authenticator<InitializeRet, AuthenticateRet, AuthorizeRet, AuthenticateOptions>, name:String, ?options:Dynamic, ?callback:(args:haxe.extern.Rest<Dynamic>) -> Dynamic):(args:haxe.extern.Rest<Dynamic>) -> AuthorizeRet;
};