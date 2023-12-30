package undici_types.pool_stats;

@:jsRequire("undici-types/pool-stats", "default") extern class PoolStats {
	function new(pool:undici_types.Pool);
	/**
		Number of open socket connections in this pool.
	**/
	var connected : Float;
	/**
		Number of open socket connections in this pool that do not have an active request.
	**/
	var free : Float;
	/**
		Number of pending requests across all clients in this pool.
	**/
	var pending : Float;
	/**
		Number of queued requests across all clients in this pool.
	**/
	var queued : Float;
	/**
		Number of currently active requests across all clients in this pool.
	**/
	var running : Float;
	/**
		Number of active, pending, or queued requests across all clients in this pool.
	**/
	var size : Float;
	static var prototype : PoolStats;
}