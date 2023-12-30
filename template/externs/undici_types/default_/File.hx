package undici_types.default_;

@:jsRequire("undici-types", "default.File") extern class File {
	/**
		Creates a new File instance.
	**/
	function new(fileBits:haxe.ds.ReadOnlyArray<ts.AnyOf14<String, node.buffer.Blob, js.lib.Uint8Array, js.lib.Uint8ClampedArray, js.lib.Uint16Array, js.lib.Uint32Array, js.lib.Int8Array, js.lib.Int16Array, js.lib.Int32Array, js.lib.BigUint64Array, js.lib.BigInt64Array, js.lib.Float32Array, js.lib.Float64Array, js.lib.DataView>>, fileName:String, ?options:undici_types.FilePropertyBag);
	static var prototype : undici_types.File;
}