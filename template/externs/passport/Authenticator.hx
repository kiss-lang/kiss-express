package passport;

typedef Authenticator<InitializeRet, AuthenticateRet, AuthorizeRet, AuthorizeOptions> = {
	/**
		Register a strategy for later use when authenticating requests.  The name
		with which the strategy is registered is passed to {@link Authenticator.authenticate `authenticate()`}.
	**/
	@:overload(function(name:String, strategy:Strategy):Authenticator<InitializeRet, AuthenticateRet, AuthorizeRet, AuthorizeOptions> { })
	function use(strategy:Strategy):Authenticator<InitializeRet, AuthenticateRet, AuthorizeRet, AuthorizeOptions>;
	/**
		Deregister a strategy that was previously registered with the given name.
		
		In a typical application, the necessary authentication strategies are
		registered when initializing the app and, once registered, are always
		available.  As such, it is typically not necessary to call this function.
	**/
	function unuse(name:String):Authenticator<InitializeRet, AuthenticateRet, AuthorizeRet, AuthorizeOptions>;
	/**
		Adapt this `Authenticator` to work with a specific framework.
		
		By default, Passport works as {@link https://github.com/senchalabs/connect#readme Connect}-style
		middleware, which makes it compatible with {@link https://expressjs.com/ Express}.
		For any app built using Express, there is no need to call this function.
	**/
	function framework<X, Y, Z>(fw:Framework<X, Y, Z>):Authenticator<X, Y, Z, AuthenticateOptions>;
	/**
		Passport initialization.
		
		Intializes Passport for incoming requests, allowing authentication strategies
		to be applied.
		
		As of v0.6.x, it is typically no longer necessary to use this middleware.  It
		exists for compatiblity with apps built using previous versions of Passport,
		in which this middleware was necessary.
		
		The primary exception to the above guidance is when using strategies that
		depend directly on `passport@0.4.x` or earlier.  These earlier versions of
		Passport monkeypatch Node.js `http.IncomingMessage` in a way that expects
		certain Passport-specific properties to be available.  This middleware
		provides a compatibility layer for this situation.
		
		Options:
		  - `userProperty` Determines what property on
		                   `req` will be set to the authenticated user object.
		                   Default `'user'`.
		
		  - `compat`       When `true`, enables a compatibility
		                   layer for packages that depend on `passport@0.4.x` or earlier.
		                   Default `true`.
		
		Examples:
		
		      app.use(passport.initialize());
		
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
	function initialize(?options:InitializeOptions):InitializeRet;
	/**
		Middleware that will restore login state from a session.
		
		Web applications typically use sessions to maintain login state between
		requests.  For example, a user will authenticate by entering credentials into
		a form which is submitted to the server.  If the credentials are valid, a
		login session is established by setting a cookie containing a session
		identifier in the user's web browser.  The web browser will send this cookie
		in subsequent requests to the server, allowing a session to be maintained.
		
		If sessions are being utilized, and a login session has been established,
		this middleware will populate `req.user` with the current user.
		
		Note that sessions are not strictly required for Passport to operate.
		However, as a general rule, most web applications will make use of sessions.
		An exception to this rule would be an API server, which expects each HTTP
		request to provide credentials in an Authorization header.
		
		Examples:
		
		     app.use(connect.cookieParser());
		     app.use(connect.session({ secret: 'keyboard cat' }));
		     app.use(passport.initialize());
		     app.use(passport.session());
		
		Options:
		   - `pauseStream`      Pause the request stream before deserializing the user
		                        object from the session.  Defaults to `false`.  Should
		                        be set to `true` in cases where middleware consuming the
		                        request body is configured after passport and the
		                        deserializeUser method is asynchronous.
	**/
	function session(?options:SessionOptions):AuthenticateRet;
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
	@:overload(function(strategy:ts.AnyOf3<String, Array<String>, Strategy>, options:AuthenticateOptions, ?callback:ts.AnyOf2<AuthenticateCallback, (args:haxe.extern.Rest<Dynamic>) -> Dynamic>):AuthenticateRet { })
	function authenticate(strategy:ts.AnyOf3<String, Array<String>, Strategy>, ?callback:ts.AnyOf2<AuthenticateCallback, (args:haxe.extern.Rest<Dynamic>) -> Dynamic>):AuthenticateRet;
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
	@:overload(function(strategy:ts.AnyOf2<String, Array<String>>, options:AuthorizeOptions, ?callback:ts.AnyOf2<AuthenticateCallback, (args:haxe.extern.Rest<Dynamic>) -> Dynamic>):AuthorizeRet { })
	function authorize(strategy:ts.AnyOf2<String, Array<String>>, ?callback:ts.AnyOf2<AuthenticateCallback, (args:haxe.extern.Rest<Dynamic>) -> Dynamic>):AuthorizeRet;
	/**
		Registers a function used to serialize user objects into the session.
		
		Examples:
		
		     passport.serializeUser(function(user, done) {
		       done(null, user.id);
		     });
		
		Registers a function used to serialize user objects into the session.
		
		Examples:
		
		     passport.serializeUser(function(user, done) {
		       done(null, user.id);
		     });
		
		Private implementation that traverses the chain of serializers,
		attempting to serialize a user.
		
		Private implementation that traverses the chain of serializers,
		attempting to serialize a user.
		
		For backwards compatibility.
	**/
	@:overload(function<TID, TR>(fn:(req:TR, user:global.express.User, done:ts.AnyOf2<(err:Dynamic) -> Void, (err:Dynamic, id:TID) -> Void>) -> Void):Void { })
	@:overload(function<User, Request>(user:User, req:Request, done:ts.AnyOf2<(err:Dynamic) -> Dynamic, (err:Dynamic, serializedUser:Any) -> Dynamic>):Void { })
	@:overload(function<User>(user:User, done:ts.AnyOf2<(err:Dynamic) -> Dynamic, (err:Dynamic, serializedUser:Any) -> Dynamic>):Void { })
	function serializeUser<TID>(fn:(user:global.express.User, done:ts.AnyOf2<(err:Dynamic) -> Void, (err:Dynamic, id:TID) -> Void>) -> Void):Void;
	/**
		Registers a function used to deserialize user objects out of the session.
		
		Examples:
		
		     passport.deserializeUser(function(id, done) {
		       User.findById(id, function (err, user) {
		         done(err, user);
		       });
		     });
		
		Registers a function used to deserialize user objects out of the session.
		
		Examples:
		
		     passport.deserializeUser(function(id, done) {
		       User.findById(id, function (err, user) {
		         done(err, user);
		       });
		     });
		
		Private implementation that traverses the chain of deserializers,
		attempting to deserialize a user.
		
		Private implementation that traverses the chain of deserializers,
		attempting to deserialize a user.
		
		For backwards compatibility.
	**/
	@:overload(function<TID, TR>(fn:(req:TR, id:TID, done:ts.AnyOf2<(err:Dynamic) -> Void, (err:Dynamic, user:ts.AnyOf2<Bool, global.express.User>) -> Void>) -> Void):Void { })
	@:overload(function<User, Request>(serializedUser:Any, req:Request, done:ts.AnyOf2<(err:Dynamic) -> Dynamic, (err:Dynamic, user:ts.AnyOf2<Bool, User>) -> Dynamic>):Void { })
	@:overload(function<User>(serializedUser:Any, done:ts.AnyOf2<(err:Dynamic) -> Dynamic, (err:Dynamic, user:ts.AnyOf2<Bool, User>) -> Dynamic>):Void { })
	function deserializeUser<TID>(fn:(id:TID, done:ts.AnyOf2<(err:Dynamic) -> Void, (err:Dynamic, user:ts.AnyOf2<Bool, global.express.User>) -> Void>) -> Void):Void;
	/**
		Registers a function used to transform auth info.
		
		In some circumstances authorization details are contained in authentication
		credentials or loaded as part of verification.
		
		For example, when using bearer tokens for API authentication, the tokens may
		encode (either directly or indirectly in a database), details such as scope
		of access or the client to which the token was issued.
		
		Such authorization details should be enforced separately from authentication.
		Because Passport deals only with the latter, this is the responsiblity of
		middleware or routes further along the chain.  However, it is not optimal to
		decode the same data or execute the same database query later.  To avoid
		this, Passport accepts optional `info` along with the authenticated `user`
		in a strategy's `success()` action.  This info is set at `req.authInfo`,
		where said later middlware or routes can access it.
		
		Optionally, applications can register transforms to proccess this info,
		which take effect prior to `req.authInfo` being set.  This is useful, for
		example, when the info contains a client ID.  The transform can load the
		client from the database and include the instance in the transformed info,
		allowing the full set of client properties to be convieniently accessed.
		
		If no transforms are registered, `info` supplied by the strategy will be left
		unmodified.
		
		Examples:
		
		     passport.transformAuthInfo(function(info, done) {
		       Client.findById(info.clientID, function (err, client) {
		         info.client = client;
		         done(err, info);
		       });
		     });
		
		Private implementation that traverses the chain of transformers,
		attempting to transform auth info.
		
		If no transformers are registered (or they all pass),
		the default behavior is to use the un-transformed info as-is.
		
		Private implementation that traverses the chain of transformers,
		attempting to transform auth info.
		
		If no transformers are registered (or they all pass),
		the default behavior is to use the un-transformed info as-is.
		
		For backwards compatibility.
	**/
	@:overload(function<InitialInfo, Request>(info:Any, req:Request, done:ts.AnyOf2<(err:Dynamic) -> Dynamic, (err:Dynamic, transformedAuthInfo:Any) -> Dynamic>):Void { })
	@:overload(function<InitialInfo>(info:Any, done:ts.AnyOf2<(err:Dynamic) -> Dynamic, (err:Dynamic, transformedAuthInfo:Any) -> Dynamic>):Void { })
	function transformAuthInfo(fn:(info:Dynamic, done:(err:Dynamic, info:Dynamic) -> Void) -> Void):Void;
};