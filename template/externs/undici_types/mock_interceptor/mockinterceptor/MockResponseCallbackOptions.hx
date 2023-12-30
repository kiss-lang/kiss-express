package undici_types.mock_interceptor.mockinterceptor;

typedef MockResponseCallbackOptions = {
	var path : String;
	var origin : String;
	var method : String;
	@:optional
	var body : ts.AnyOf21<String, undici_types.FormData, node.buffer.Blob, node.buffer.Buffer, js.lib.Uint8Array, node.stream.Readable, js.lib.ArrayBuffer, js.lib.AsyncIterable<js.lib.Uint8Array>, Iterable<js.lib.Uint8Array>, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView, node.url.URLSearchParams>;
	var headers : ts.AnyOf2<undici_types.Headers, haxe.DynamicAccess<String>>;
	var maxRedirections : Float;
};