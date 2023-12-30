package undici_types.diagnosticschannel;

typedef RequestTrailersMessage = {
	var request : Request;
	var trailers : Array<node.buffer.Buffer>;
};