package multer;

/**
	An object describing a field name and the maximum number of files with
	that field name to accept.
**/
typedef Field = {
	/**
		The field name.
	**/
	var name : String;
	/**
		Optional maximum number of files per field to accept. (Default: Infinity)
	**/
	@:optional
	var maxCount : Float;
};