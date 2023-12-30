package node;

typedef ArrayOptions = {
	/**
		the maximum concurrent invocations of `fn` to call on the stream at once. **Default: 1**.
	**/
	@:optional
	var concurrency : Float;
	/**
		allows destroying the stream if the signal is aborted.
	**/
	@:optional
	var signal : js.html.AbortSignal;
};