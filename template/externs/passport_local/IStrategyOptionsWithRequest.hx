package passport_local;

typedef IStrategyOptionsWithRequest = {
	@:optional
	var usernameField : String;
	@:optional
	var passwordField : String;
	@:optional
	var session : Bool;
	var passReqToCallback : Bool;
};