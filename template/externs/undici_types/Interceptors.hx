package undici_types;

@:jsRequire("undici-types/interceptors") @valueModuleOnly extern class Interceptors {
	static function createRedirectInterceptor(opts:undici_types.interceptors.RedirectInterceptorOpts):undici_types.dispatcher.DispatchInterceptor;
}