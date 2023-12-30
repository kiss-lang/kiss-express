package undici_types.dispatcher;

typedef ConnectOptions = {
	var path : String;
	/**
		Default: `null`
	**/
	@:optional
	var headers : ts.AnyOf2<Array<String>, haxe.DynamicAccess<Null<ts.AnyOf2<String, Array<String>>>>>;
	/**
		Default: `null`
	**/
	@:optional
	var signal : Any;
	/**
		This argument parameter is passed through to `ConnectData`
	**/
	@:optional
	var opaque : Any;
	/**
		Default: 0
	**/
	@:optional
	var maxRedirections : Float;
	/**
		Default: `null`
	**/
	@:optional
	var responseHeader : String;
};