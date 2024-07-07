package passport_local;

typedef VerifyFunction = (username:String, password:String, done:ts.AnyOf3<(error:Dynamic) -> Void, (error:Dynamic, user:ts.AnyOf2<Bool, global.express.User>) -> Void, (error:Dynamic, user:ts.AnyOf2<Bool, global.express.User>, options:IVerifyOptions) -> Void>) -> Void;