package undici_types;

typedef IWebSocket = {
	var binaryType : BinaryType;
	final bufferedAmount : Float;
	final extensions : String;
	@:optional
	dynamic function onclose(ev:CloseEvent):Dynamic;
	@:optional
	dynamic function onerror(ev:{ var prototype : js.html.Event; final AT_TARGET : Float; final BUBBLING_PHASE : Float; final CAPTURING_PHASE : Float; final NONE : Float; }):Dynamic;
	@:optional
	dynamic function onmessage(ev:MessageEvent<Dynamic>):Dynamic;
	@:optional
	dynamic function onopen(ev:{ var prototype : js.html.Event; final AT_TARGET : Float; final BUBBLING_PHASE : Float; final CAPTURING_PHASE : Float; final NONE : Float; }):Dynamic;
	final protocol : String;
	final readyState : Float;
	final url : String;
	function close(?code:Float, ?reason:String):Void;
	function send(data:ts.AnyOf5<String, js.lib.ArrayBuffer, js.lib.SharedArrayBuffer, js.html.Blob, js.lib.ArrayBufferView>):Void;
	final CLOSED : Float;
	final CLOSING : Float;
	final CONNECTING : Float;
	final OPEN : Float;
	@:overload(function(type:String, listener:undici_types.patch.EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, undici_types.patch.AddEventListenerOptions>):Void { })
	function addEventListener<K>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, undici_types.patch.AddEventListenerOptions>):Void;
	@:overload(function(type:String, listener:undici_types.patch.EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, undici_types.patch.EventListenerOptions>):Void { })
	function removeEventListener<K>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, undici_types.patch.EventListenerOptions>):Void;
	var prototype : js.html.EventTarget;
};