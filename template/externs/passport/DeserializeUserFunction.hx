package passport;

typedef DeserializeUserFunction = (serializedUser:Any, req:express.Request<express_serve_static_core.ParamsDictionary, Dynamic, Dynamic, qs.ParsedQs, haxe.DynamicAccess<Dynamic>>, done:DoneCallback) -> Void;