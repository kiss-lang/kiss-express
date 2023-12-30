package node.module;

/**
	The `resolve` hook chain is responsible for resolving file URL for a given module specifier and parent URL, and optionally its format (such as `'module'`) as a hint to the `load` hook.
	If a format is specified, the load hook is ultimately responsible for providing the final `format` value (and it is free to ignore the hint provided by `resolve`);
	if `resolve` provides a format, a custom `load` hook is required even if only to pass the value to the Node.js default `load` hook.
**/
typedef ResolveHook = (specifier:String, context:ResolveHookContext, nextResolve:ts.AnyOf2<(specifier:String) -> ts.AnyOf2<ResolveFnOutput, js.lib.Promise<ResolveFnOutput>>, (specifier:String, context:ResolveHookContext) -> ts.AnyOf2<ResolveFnOutput, js.lib.Promise<ResolveFnOutput>>>) -> ts.AnyOf2<ResolveFnOutput, js.lib.Promise<ResolveFnOutput>>;