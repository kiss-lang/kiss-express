package js.html;

/**
	Provides a way to easily construct a set of key/value pairs representing form fields and their values, which can then be easily sent using the XMLHttpRequest.send() method. It uses the same format a form would use if the encoding type were set to "multipart/form-data".
**/
typedef IFormData = {
	function append(name:String, value:ts.AnyOf2<String, js.html.Blob>, ?fileName:String):Void;
	function delete(name:String):Void;
	function get(name:String):Null<FormDataEntryValue>;
	function getAll(name:String):Array<FormDataEntryValue>;
	function has(name:String):Bool;
	function set(name:String, value:ts.AnyOf2<String, js.html.Blob>, ?fileName:String):Void;
	function forEach(callbackfn:(value:FormDataEntryValue, key:String, parent:js.html.FormData) -> Void, ?thisArg:Dynamic):Void;
	/**
		Returns an array of key, value pairs for every entry in the list.
	**/
	function entries():js.lib.IterableIterator<ts.Tuple2<String, FormDataEntryValue>>;
	/**
		Returns a list of keys in the list.
	**/
	function keys():js.lib.IterableIterator<String>;
	/**
		Returns a list of values in the list.
	**/
	function values():js.lib.IterableIterator<FormDataEntryValue>;
};