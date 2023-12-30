package node.module;

/**
	The `load` hook provides a way to define a custom method of determining how a URL should be interpreted, retrieved, and parsed.
	It is also in charge of validating the import assertion.
**/
typedef LoadHook = (url:String, context:LoadHookContext, nextLoad:ts.AnyOf2<(url:String) -> ts.AnyOf2<LoadFnOutput, js.lib.Promise<LoadFnOutput>>, (url:String, context:LoadHookContext) -> ts.AnyOf2<LoadFnOutput, js.lib.Promise<LoadFnOutput>>>) -> ts.AnyOf2<LoadFnOutput, js.lib.Promise<LoadFnOutput>>;