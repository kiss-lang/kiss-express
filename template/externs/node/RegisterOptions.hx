package node;

typedef RegisterOptions<Data> = {
	var parentURL : ts.AnyOf2<String, node.url.URL>;
	@:optional
	var data : Data;
	@:optional
	var transferList : Array<Dynamic>;
};