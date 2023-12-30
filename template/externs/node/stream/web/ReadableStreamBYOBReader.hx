package node.stream.web;

@:jsRequire("stream/web", "ReadableStreamBYOBReader") extern class ReadableStreamBYOBReader {
	function read<T>(view:T):js.lib.Promise<ReadableStreamReadResult<T>>;
	function releaseLock():Void;
	final closed : js.lib.Promise<Null<Any>>;
	function cancel(?reason:Dynamic):js.lib.Promise<ts.Undefined>;
}