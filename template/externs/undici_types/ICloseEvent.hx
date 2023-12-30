package undici_types;

typedef ICloseEvent = {
	final code : Float;
	final reason : String;
	final wasClean : Bool;
	var prototype : js.html.Event;
	final AT_TARGET : Float;
	final BUBBLING_PHASE : Float;
	final CAPTURING_PHASE : Float;
	final NONE : Float;
};