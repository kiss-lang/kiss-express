package undici_types.dispatcher;

typedef BodyMixin = {
	@:optional
	final body : Any;
	final bodyUsed : Bool;
	function arrayBuffer():js.lib.Promise<js.lib.ArrayBuffer>;
	function blob():js.lib.Promise<node.buffer.Blob>;
	function formData():js.lib.Promise<Any>;
	function json():js.lib.Promise<Any>;
	function text():js.lib.Promise<String>;
};