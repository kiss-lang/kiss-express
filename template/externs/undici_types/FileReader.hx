package undici_types;

@:jsRequire("undici-types", "FileReader") extern class FileReader {
	function new();
	var __proto__ : Dynamic;
	function readAsArrayBuffer(blob:node.buffer.Blob):Void;
	function readAsBinaryString(blob:node.buffer.Blob):Void;
	function readAsText(blob:node.buffer.Blob, ?encoding:String):Void;
	function readAsDataURL(blob:node.buffer.Blob):Void;
	function abort():Void;
	final EMPTY : Int;
	final LOADING : Int;
	final DONE : Int;
	final readyState : Float;
	final result : Null<ts.AnyOf2<String, js.lib.ArrayBuffer>>;
	final error : Null<{
		var prototype : js.html.DOMException;
		final ABORT_ERR : Float;
		final DATA_CLONE_ERR : Float;
		final DOMSTRING_SIZE_ERR : Float;
		final HIERARCHY_REQUEST_ERR : Float;
		final INDEX_SIZE_ERR : Float;
		final INUSE_ATTRIBUTE_ERR : Float;
		final INVALID_ACCESS_ERR : Float;
		final INVALID_CHARACTER_ERR : Float;
		final INVALID_MODIFICATION_ERR : Float;
		final INVALID_NODE_TYPE_ERR : Float;
		final INVALID_STATE_ERR : Float;
		final NAMESPACE_ERR : Float;
		final NETWORK_ERR : Float;
		final NOT_FOUND_ERR : Float;
		final NOT_SUPPORTED_ERR : Float;
		final NO_DATA_ALLOWED_ERR : Float;
		final NO_MODIFICATION_ALLOWED_ERR : Float;
		final QUOTA_EXCEEDED_ERR : Float;
		final SECURITY_ERR : Float;
		final SYNTAX_ERR : Float;
		final TIMEOUT_ERR : Float;
		final TYPE_MISMATCH_ERR : Float;
		final URL_MISMATCH_ERR : Float;
		final VALIDATION_ERR : Float;
		final WRONG_DOCUMENT_ERR : Float;
	}>;
	@:optional
	dynamic function onloadstart(event:ProgressEvent):Void;
	@:optional
	dynamic function onprogress(event:ProgressEvent):Void;
	@:optional
	dynamic function onload(event:ProgressEvent):Void;
	@:optional
	dynamic function onabort(event:ProgressEvent):Void;
	@:optional
	dynamic function onerror(event:ProgressEvent):Void;
	@:optional
	dynamic function onloadend(event:ProgressEvent):Void;
	static var prototype : FileReader;
	@:native("EMPTY")
	static final EMPTY_ : Int;
	@:native("LOADING")
	static final LOADING_ : Int;
	@:native("DONE")
	static final DONE_ : Int;
}