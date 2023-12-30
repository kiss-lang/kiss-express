package undici_types.patch;

typedef Event = {
	var prototype : js.html.Event;
	final AT_TARGET : Float;
	final BUBBLING_PHASE : Float;
	final CAPTURING_PHASE : Float;
	final NONE : Float;
};