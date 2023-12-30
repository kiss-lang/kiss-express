package undici_types;

typedef SpecIterator<T, TReturn, TNext> = {
	function next(args:haxe.extern.Rest<Any>):js.lib.IteratorResult<T, TReturn>;
};