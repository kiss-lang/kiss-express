package undici_types;

@:jsRequire("undici-types", "CacheStorage") extern class CacheStorage {
	function new();
	function match(request:js.html.RequestInfo, ?options:MultiCacheQueryOptions):js.lib.Promise<Null<js.html.Response>>;
	function has(cacheName:String):js.lib.Promise<Bool>;
	function open(cacheName:String):js.lib.Promise<Cache>;
	function delete(cacheName:String):js.lib.Promise<Bool>;
	function keys():js.lib.Promise<Array<String>>;
	static var prototype : CacheStorage;
}