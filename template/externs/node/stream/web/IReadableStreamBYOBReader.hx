package node.stream.web;

typedef IReadableStreamBYOBReader = {
	function read<T>(view:T):js.lib.Promise<ReadableStreamReadResult<T>>;
	function releaseLock():Void;
	final closed : js.lib.Promise<Null<Any>>;
	function cancel(?reason:Dynamic):js.lib.Promise<ts.Undefined>;
};