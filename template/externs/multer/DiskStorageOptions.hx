package multer;

typedef DiskStorageOptions = {
	/**
		A string or function that determines the destination path for uploaded
		files. If a string is passed and the directory does not exist, Multer
		attempts to create it recursively. If neither a string or a function
		is passed, the destination defaults to `os.tmpdir()`.
	**/
	@:optional
	var destination : ts.AnyOf2<String, (req:express.Request<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>, file:global.express.multer.File, callback:(error:Null<js.lib.Error>, destination:String) -> Void) -> Void>;
	/**
		A function that determines the name of the uploaded file. If nothing
		is passed, Multer will generate a 32 character pseudorandom hex string
		with no extension.
	**/
	@:optional
	function filename(req:express.Request<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>, file:global.express.multer.File, callback:(error:Null<js.lib.Error>, filename:String) -> Void):Void;
};