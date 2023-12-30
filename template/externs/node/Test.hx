package node;

@jsInaccessible extern class Test extends node.async_hooks.AsyncResource {
	var concurrency : Float;
	var nesting : Float;
	var only : Bool;
	var reporter : TestsStream;
	var runOnlySubtests : Bool;
	var testNumber : Float;
	var timeout : Null<Float>;
	/**
		Call all `destroy` hooks. This should only ever be called once. An error will
		be thrown if it is called more than once. This **must** be manually called. If
		the resource is left to be collected by the GC then the `destroy` hooks will
		never be called.
	**/
	function emitDestroy():Test;
	static var prototype : Test;
}