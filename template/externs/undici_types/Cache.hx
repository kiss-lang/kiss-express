package undici_types;

typedef Cache = {
	function match(request:js.html.RequestInfo, ?options:CacheQueryOptions):js.lib.Promise<Null<js.html.Response>>;
	function matchAll(?request:js.html.RequestInfo, ?options:CacheQueryOptions):js.lib.Promise<haxe.ds.ReadOnlyArray<js.html.Response>>;
	function add(request:js.html.RequestInfo):js.lib.Promise<Null<Any>>;
	function addAll(requests:Array<js.html.RequestInfo>):js.lib.Promise<Null<Any>>;
	function put(request:js.html.RequestInfo, response:js.html.Response):js.lib.Promise<Null<Any>>;
	function delete(request:js.html.RequestInfo, ?options:CacheQueryOptions):js.lib.Promise<Bool>;
	function keys(?request:js.html.RequestInfo, ?options:CacheQueryOptions):js.lib.Promise<haxe.ds.ReadOnlyArray<js.html.Request>>;
};