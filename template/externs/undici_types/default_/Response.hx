package undici_types.default_;

@:jsRequire("undici-types", "default.Response") extern class Response {
	function new(?body:ts.AnyOf19<String, undici_types.FormData, node.buffer.Blob, js.lib.Uint8Array, js.lib.ArrayBuffer, js.lib.AsyncIterable<js.lib.Uint8Array>, Iterable<js.lib.Uint8Array>, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView, node.url.URLSearchParams>, ?init:undici_types.ResponseInit);
	static var prototype : undici_types.Response;
	static function error():undici_types.Response;
	static function json(data:Dynamic, ?init:undici_types.ResponseInit):undici_types.Response;
	static function redirect(url:ts.AnyOf2<String, node.url.URL>, status:undici_types.ResponseRedirectStatus):undici_types.Response;
}