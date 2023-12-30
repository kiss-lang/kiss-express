package multer;

/**
	Options for initializing a Multer instance.
**/
typedef Options = {
	/**
		A `StorageEngine` responsible for processing files uploaded via Multer.
		Takes precedence over `dest`.
	**/
	@:optional
	var storage : StorageEngine;
	/**
		The destination directory for uploaded files. If `storage` is not set
		and `dest` is, Multer will create a `DiskStorage` instance configured
		to store files at `dest` with random filenames.
		
		Ignored if `storage` is set.
	**/
	@:optional
	var dest : String;
	/**
		An object specifying various limits on incoming data. This object is
		passed to Busboy directly, and the details of properties can be found
		at https://github.com/mscdex/busboy#busboy-methods.
	**/
	@:optional
	var limits : {
		/**
			Maximum size of each form field name in bytes. (Default: 100)
		**/
		@:optional
		var fieldNameSize : Float;
		/**
			Maximum size of each form field value in bytes. (Default: 1048576)
		**/
		@:optional
		var fieldSize : Float;
		/**
			Maximum number of non-file form fields. (Default: Infinity)
		**/
		@:optional
		var fields : Float;
		/**
			Maximum size of each file in bytes. (Default: Infinity)
		**/
		@:optional
		var fileSize : Float;
		/**
			Maximum number of file fields. (Default: Infinity)
		**/
		@:optional
		var files : Float;
		/**
			Maximum number of parts (non-file fields + files). (Default: Infinity)
		**/
		@:optional
		var parts : Float;
		/**
			Maximum number of headers. (Default: 2000)
		**/
		@:optional
		var headerPairs : Float;
	};
	/**
		Preserve the full path of the original filename rather than the basename. (Default: false)
	**/
	@:optional
	var preservePath : Bool;
	/**
		Optional function to control which files are uploaded. This is called
		for every file that is processed.
	**/
	@:optional
	function fileFilter(req:express.Request<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>, file:global.express.multer.File, callback:FileFilterCallback):Void;
};