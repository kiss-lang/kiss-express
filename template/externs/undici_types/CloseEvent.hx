package undici_types;

@:jsRequire("undici-types", "CloseEvent") extern class CloseEvent {
	function new(type:String, ?eventInitDict:CloseEventInit);
	final code : Float;
	final reason : String;
	final wasClean : Bool;
	var prototype : js.html.Event;
	final AT_TARGET : Float;
	final BUBBLING_PHASE : Float;
	final CAPTURING_PHASE : Float;
	final NONE : Float;
	@:native("prototype")
	static var prototype_ : CloseEvent;
}