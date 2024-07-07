package passport_local;

@:jsRequire("passport-local", "Strategy") extern class Strategy extends passport_strategy.Strategy {
	@:overload(function(options:IStrategyOptions, verify:VerifyFunction):Strategy { })
	@:overload(function(verify:VerifyFunction):Strategy { })
	function new(options:IStrategyOptionsWithRequest, verify:VerifyFunctionWithRequest);
	var name : String;
	static var prototype : Strategy;
}