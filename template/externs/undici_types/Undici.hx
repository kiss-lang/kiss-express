package undici_types;

@:jsRequire("undici-types", "default") @valueModuleOnly extern class Undici {
	dynamic static function createRedirectInterceptor(opts:undici_types.interceptors.RedirectInterceptorOpts):undici_types.dispatcher.DispatchInterceptor;
	dynamic static function buildConnector(?options:undici_types.buildconnector.BuildOptions):undici_types.buildconnector.Connector;
	static var errors : { };
	dynamic static function setGlobalDispatcher<DispatcherImplementation>(dispatcher:DispatcherImplementation):Void;
	dynamic static function getGlobalDispatcher():Dispatcher;
	dynamic static function request(url:ts.AnyOf3<String, node.url.URL, node.url.UrlObject>, ?options:Dynamic):js.lib.Promise<undici_types.dispatcher.ResponseData>;
	dynamic static function stream(url:ts.AnyOf3<String, node.url.URL, node.url.UrlObject>, options:Dynamic, factory:undici_types.dispatcher.StreamFactory):js.lib.Promise<undici_types.dispatcher.StreamData>;
	dynamic static function pipeline(url:ts.AnyOf3<String, node.url.URL, node.url.UrlObject>, options:Dynamic, handler:undici_types.dispatcher.PipelineHandler):node.stream.Duplex;
	dynamic static function connect(url:ts.AnyOf3<String, node.url.URL, node.url.UrlObject>, ?options:Dynamic):js.lib.Promise<undici_types.dispatcher.ConnectData>;
	dynamic static function upgrade(url:ts.AnyOf3<String, node.url.URL, node.url.UrlObject>, ?options:Dynamic):js.lib.Promise<undici_types.dispatcher.UpgradeData>;
	static var mockErrors : { };
	dynamic static function fetch(input:RequestInfo, ?init:RequestInit):js.lib.Promise<Response>;
	static var caches : CacheStorage;
}