package undici_types;

typedef MessageEventInit<T> = {
	@:optional
	var data : T;
	@:optional
	var lastEventId : String;
	@:optional
	var origin : String;
	@:optional
	var ports : Array<{
		var prototype : js.html.MessagePort;
	}>;
	@:optional
	var source : {
		var prototype : js.html.MessagePort;
	};
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};