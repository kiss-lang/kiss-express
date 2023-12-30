/**
	Returns a Multer instance that provides several methods for generating
	middleware that process files uploaded in `multipart/form-data` format.
	
	The `StorageEngine` specified in `storage` will be used to store files. If
	`storage` is not set and `dest` is, files will be stored in `dest` on the
	local file system with random names. If neither are set, files will be stored
	in memory.
	
	In addition to files, all generated middleware process all text fields in
	the request. For each non-file field, the `Request.body` object will be
	populated with an entry mapping the field name to its string value, or array
	of string values if multiple fields share the same name.
**/
@:jsRequire("multer") @valueModuleOnly extern class Multer {
	/**
		Returns a Multer instance that provides several methods for generating
		middleware that process files uploaded in `multipart/form-data` format.
		
		The `StorageEngine` specified in `storage` will be used to store files. If
		`storage` is not set and `dest` is, files will be stored in `dest` on the
		local file system with random names. If neither are set, files will be stored
		in memory.
		
		In addition to files, all generated middleware process all text fields in
		the request. For each non-file field, the `Request.body` object will be
		populated with an entry mapping the field name to its string value, or array
		of string values if multiple fields share the same name.
	**/
	@:selfCall
	static function call(?options:multer.Options):multer.Multer;
	/**
		Returns a `StorageEngine` implementation configured to store files on
		the local file system.
		
		A string or function may be specified to determine the destination
		directory, and a function to determine filenames. If no options are set,
		files will be stored in the system's temporary directory with random 32
		character filenames.
	**/
	static function diskStorage(options:multer.DiskStorageOptions):multer.StorageEngine;
	/**
		Returns a `StorageEngine` implementation configured to store files in
		memory as `Buffer` objects.
	**/
	static function memoryStorage():multer.StorageEngine;
}