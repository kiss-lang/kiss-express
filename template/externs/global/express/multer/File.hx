package global.express.multer;

/**
	Object containing file metadata and access information.
**/
typedef File = {
	/**
		Name of the form field associated with this file.
	**/
	var fieldname : String;
	/**
		Name of the file on the uploader's computer.
	**/
	var originalname : String;
	/**
		Value of the `Content-Transfer-Encoding` header for this file.
	**/
	var encoding : String;
	/**
		Value of the `Content-Type` header for this file.
	**/
	var mimetype : String;
	/**
		Size of the file in bytes.
	**/
	var size : Float;
	/**
		A readable stream of this file. Only available to the `_handleFile`
		callback for custom `StorageEngine`s.
	**/
	var stream : node.stream.Readable;
	/**
		`DiskStorage` only: Directory to which this file has been uploaded.
	**/
	var destination : String;
	/**
		`DiskStorage` only: Name of this file within `destination`.
	**/
	var filename : String;
	/**
		`DiskStorage` only: Full path to the uploaded file.
	**/
	var path : String;
	/**
		`MemoryStorage` only: A Buffer containing the entire file.
	**/
	var buffer : global.Buffer;
};