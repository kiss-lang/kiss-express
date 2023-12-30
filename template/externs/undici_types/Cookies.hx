package undici_types;

@:jsRequire("undici-types/cookies") @valueModuleOnly extern class Cookies {
	static function deleteCookie(headers:js.html.Headers, name:String, ?attributes:{ @:optional var name : String; @:optional var domain : String; }):Void;
	static function getCookies(headers:js.html.Headers):haxe.DynamicAccess<String>;
	static function getSetCookies(headers:js.html.Headers):Array<Cookie>;
	static function setCookie(headers:js.html.Headers, cookie:Cookie):Void;
}