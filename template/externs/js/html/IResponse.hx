package js.html;

/**
	This Fetch API interface represents the response to a request.
**/
typedef IResponse = {
	final headers : js.html.Headers;
	final ok : Bool;
	final redirected : Bool;
	final status : Float;
	final statusText : String;
	final trailer : js.lib.Promise<js.html.Headers>;
	final type : js.html.ResponseType;
	final url : String;
	function clone():js.html.Response;
	final body : Null<ReadableStream<js.lib.Uint8Array>>;
	final bodyUsed : Bool;
	function arrayBuffer():js.lib.Promise<js.lib.ArrayBuffer>;
	function blob():js.lib.Promise<js.html.Blob>;
	function formData():js.lib.Promise<js.html.FormData>;
	function json():js.lib.Promise<Dynamic>;
	function text():js.lib.Promise<String>;
};