package multer;

typedef Multer = {
	/**
		Returns middleware that processes a single file associated with the
		given form field.
		
		The `Request` object will be populated with a `file` object containing
		information about the processed file.
	**/
	function single(fieldName:String):express.RequestHandler<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>;
	/**
		Returns middleware that processes multiple files sharing the same field
		name.
		
		The `Request` object will be populated with a `files` array containing
		an information object for each processed file.
	**/
	function array(fieldName:String, ?maxCount:Float):express.RequestHandler<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>;
	/**
		Returns middleware that processes multiple files associated with the
		given form fields.
		
		The `Request` object will be populated with a `files` object which
		maps each field name to an array of the associated file information
		objects.
	**/
	function fields(fields:haxe.ds.ReadOnlyArray<Field>):express.RequestHandler<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>;
	/**
		Returns middleware that processes all files contained in the multipart
		request.
		
		The `Request` object will be populated with a `files` array containing
		an information object for each processed file.
	**/
	function any():express.RequestHandler<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>;
	/**
		Returns middleware that accepts only non-file multipart form fields.
	**/
	function none():express.RequestHandler<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>;
};