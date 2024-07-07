package passport;

typedef DoneCallback = ts.AnyOf2<(err:Dynamic) -> Void, (err:Dynamic, user:ts.AnyOf2<Bool, global.express.User>) -> Void>;