package passport;

typedef Strategy = {
	@:optional
	var name : String;
	/**
		Authenticate request.
		
		This function must be overridden by subclasses.  In abstract form, it always
		throws an exception.
	**/
	function authenticate(req:express.Request<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>, ?options:Dynamic):Dynamic;
};