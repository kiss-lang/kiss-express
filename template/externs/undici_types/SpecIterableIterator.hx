package undici_types;

typedef SpecIterableIterator<T> = {
	function next(args:haxe.extern.Rest<Any>):js.lib.IteratorResult<T, Dynamic>;
};