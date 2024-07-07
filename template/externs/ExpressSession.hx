@:jsRequire("express-session") @valueModuleOnly extern class ExpressSession {
	@:selfCall
	static function call(?options:express_session.SessionOptions):express.RequestHandler<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>;
}