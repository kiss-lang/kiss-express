package undici_types;

typedef WebSocketEventMap = {
	var close : CloseEvent;
	var error : {
		var prototype : js.html.Event;
		final AT_TARGET : Float;
		final BUBBLING_PHASE : Float;
		final CAPTURING_PHASE : Float;
		final NONE : Float;
	};
	var message : MessageEvent<Dynamic>;
	var open : {
		var prototype : js.html.Event;
		final AT_TARGET : Float;
		final BUBBLING_PHASE : Float;
		final CAPTURING_PHASE : Float;
		final NONE : Float;
	};
};