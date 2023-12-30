package multer;

@:jsRequire("multer", "MulterError") extern class MulterError extends js.lib.Error {
	function new(code:ErrorCode, ?field:String);
	/**
		Identifying error code.
	**/
	var code : ErrorCode;
	/**
		Name of the multipart form field associated with this error.
	**/
	@:optional
	var field : String;
	static var prototype : MulterError;
}