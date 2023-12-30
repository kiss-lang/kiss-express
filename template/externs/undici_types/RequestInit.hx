package undici_types;

typedef RequestInit = {
	@:optional
	var method : String;
	@:optional
	var keepalive : Bool;
	@:optional
	var headers : HeadersInit;
	@:optional
	var body : ts.AnyOf19<String, FormData, node.buffer.Blob, js.lib.Uint8Array, js.lib.ArrayBuffer, js.lib.AsyncIterable<js.lib.Uint8Array>, Iterable<js.lib.Uint8Array>, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView, node.url.URLSearchParams>;
	@:optional
	var redirect : RequestRedirect;
	@:optional
	var integrity : String;
	@:optional
	var signal : js.html.AbortSignal;
	@:optional
	var credentials : RequestCredentials;
	@:optional
	var mode : RequestMode;
	@:optional
	var referrer : String;
	@:optional
	var referrerPolicy : ReferrerPolicy;
	@:optional
	var window : Any;
	@:optional
	var dispatcher : Dispatcher;
	@:optional
	var duplex : String;
};