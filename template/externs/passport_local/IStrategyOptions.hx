package passport_local;

typedef IStrategyOptions = {
	@:optional
	var usernameField : String;
	@:optional
	var passwordField : String;
	@:optional
	var session : Bool;
	@:optional
	var passReqToCallback : Bool;
};