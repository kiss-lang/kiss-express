package multer;

/**
	Implementations of this interface are responsible for storing files
	encountered by Multer and returning information on how to access them
	once stored. Implementations must also provide a method for removing
	files in the event that an error occurs.
**/
typedef StorageEngine = {
	/**
		Store the file described by `file`, then invoke the callback with
		information about the stored file.
		
		File contents are available as a stream via `file.stream`. Information
		passed to the callback will be merged with `file` for subsequent
		middleware.
	**/
	function _handleFile(req:express.Request<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>, file:global.express.multer.File, callback:ts.AnyOf3<() -> Void, (error:Dynamic) -> Void, (error:Dynamic, info:{ /** Name of the form field associated with this file. **/ @:optional var fieldname : String; /** Name of the file on the uploader's computer. **/ @:optional var originalname : String; /** Value of the `Content-Transfer-Encoding` header for this file. **/ @:optional var encoding : String; /** Value of the `Content-Type` header for this file. **/ @:optional var mimetype : String; /** Size of the file in bytes. **/ @:optional var size : Float; /** A readable stream of this file. Only available to the `_handleFile`callback for custom `StorageEngine`s. **/ @:optional var stream : node.stream.Readable; /** `DiskStorage` only: Directory to which this file has been uploaded. **/ @:optional var destination : String; /** `DiskStorage` only: Name of this file within `destination`. **/ @:optional var filename : String; /** `DiskStorage` only: Full path to the uploaded file. **/ @:optional var path : String; /** `MemoryStorage` only: A Buffer containing the entire file. **/ @:optional var buffer : node.buffer.Buffer; }) -> Void>):Void;
	/**
		Remove the file described by `file`, then invoke the callback with.
		
		`file` contains all the properties available to `_handleFile`, as
		well as those returned by `_handleFile`.
	**/
	function _removeFile(req:express.Request<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>, file:global.express.multer.File, callback:(error:Null<js.lib.Error>) -> Void):Void;
};