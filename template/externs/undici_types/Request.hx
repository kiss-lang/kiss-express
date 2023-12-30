package undici_types;

@:jsRequire("undici-types", "Request") extern class Request {
	function new(input:RequestInfo, ?init:RequestInit);
	final cache : RequestCache;
	final credentials : RequestCredentials;
	final destination : RequestDestination;
	final headers : Headers;
	final integrity : String;
	final method : String;
	final mode : RequestMode;
	final redirect : RequestRedirect;
	final referrerPolicy : String;
	final url : String;
	final keepalive : Bool;
	final signal : js.html.AbortSignal;
	final duplex : String;
	final body : Null<node.stream.web.ReadableStream<Dynamic>>;
	final bodyUsed : Bool;
	function arrayBuffer():js.lib.Promise<js.lib.ArrayBuffer>;
	function blob():js.lib.Promise<node.buffer.Blob>;
	function formData():js.lib.Promise<FormData>;
	function json():js.lib.Promise<Any>;
	function text():js.lib.Promise<String>;
	function clone():Request;
	static var prototype : Request;
}