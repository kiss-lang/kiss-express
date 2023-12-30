package undici_types;

@:jsRequire("undici-types", "MessageEvent") extern class MessageEvent<T> {
	function new<T>(type:String, ?eventInitDict:MessageEventInit<T>);
	final data : T;
	final lastEventId : String;
	final origin : String;
	final ports : haxe.ds.ReadOnlyArray<{
		var prototype : js.html.MessagePort;
	}>;
	final source : Null<{
		var prototype : js.html.MessagePort;
	}>;
	function initMessageEvent(type:String, ?bubbles:Bool, ?cancelable:Bool, ?data:Dynamic, ?origin:String, ?lastEventId:String, ?source:{ var prototype : js.html.MessagePort; }, ?ports:Array<{ var prototype : js.html.MessagePort; }>):Void;
	var prototype : js.html.Event;
	final AT_TARGET : Float;
	final BUBBLING_PHASE : Float;
	final CAPTURING_PHASE : Float;
	final NONE : Float;
	@:native("prototype")
	static var prototype_ : MessageEvent<Dynamic>;
}