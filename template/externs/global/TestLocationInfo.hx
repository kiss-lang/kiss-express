package global;

typedef TestLocationInfo = {
	/**
		The column number where the test is defined, or
		`undefined` if the test was run through the REPL.
	**/
	@:optional
	var column : Float;
	/**
		The path of the test file, `undefined` if test is not ran through a file.
	**/
	@:optional
	var file : String;
	/**
		The line number where the test is defined, or
		`undefined` if the test was run through the REPL.
	**/
	@:optional
	var line : Float;
};