package multer;

/**
	a function to control which files should be uploaded and which should be skipped
	pass a boolean to indicate if the file should be accepted
	pass an error if something goes wrong
**/
typedef FileFilterCallback = ts.AnyOf2<(error:js.lib.Error) -> Void, (error:Dynamic, acceptFile:Bool) -> Void>;