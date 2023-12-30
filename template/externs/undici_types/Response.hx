package undici_types;

@:jsRequire("undici-types", "Response") extern class Response {
	function new(?body:ts.AnyOf19<String, FormData, node.buffer.Blob, js.lib.Uint8Array, js.lib.ArrayBuffer, js.lib.AsyncIterable<js.lib.Uint8Array>, Iterable<js.lib.Uint8Array>, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView, node.url.URLSearchParams>, ?init:ResponseInit);
	final headers : Headers;
	final ok : Bool;
	final status : Float;
	final statusText : String;
	final type : ResponseType;
	final url : String;
	final redirected : Bool;
	final body : Null<node.stream.web.ReadableStream<Dynamic>>;
	final bodyUsed : Bool;
	function arrayBuffer():js.lib.Promise<js.lib.ArrayBuffer>;
	function blob():js.lib.Promise<node.buffer.Blob>;
	function formData():js.lib.Promise<FormData>;
	function json():js.lib.Promise<Any>;
	function text():js.lib.Promise<String>;
	function clone():Response;
	static var prototype : Response;
	static function error():Response;
	@:native("json")
	static function json_(data:Dynamic, ?init:ResponseInit):Response;
	static function redirect(url:ts.AnyOf2<String, node.url.URL>, status:ResponseRedirectStatus):Response;
}