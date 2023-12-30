package undici_types;

@:jsRequire("undici-types", "File") extern class File extends node.buffer.Blob {
	/**
		Creates a new File instance.
	**/
	function new(fileBits:haxe.ds.ReadOnlyArray<ts.AnyOf14<String, node.buffer.Blob, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>>, fileName:String, ?options:FilePropertyBag);
	/**
		Name of the file referenced by the File object.
	**/
	final name : String;
	/**
		The last modified date of the file as the number of milliseconds since the Unix epoch (January 1, 1970 at midnight). Files without a known last modified date return the current date.
	**/
	final lastModified : Float;
	static var prototype : File;
}