package undici_types;

@:jsRequire("undici-types", "RedirectHandler") extern class RedirectHandler {
	function new(dispatch:Dispatcher, maxRedirections:Float, opts:undici_types.dispatcher.DispatchOptions, handler:undici_types.dispatcher.DispatchHandlers);
	static var prototype : RedirectHandler;
}