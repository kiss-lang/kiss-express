package js.html;

/**
	This Fetch API interface represents a resource request.
**/
typedef IRequest = {
	/**
		Returns the cache mode associated with request, which is a string indicating how the request will interact with the browser's cache when fetching.
	**/
	final cache : js.html.RequestCache;
	/**
		Returns the credentials mode associated with request, which is a string indicating whether credentials will be sent with the request always, never, or only when sent to a same-origin URL.
	**/
	final credentials : js.html.RequestCredentials;
	/**
		Returns the kind of resource requested by request, e.g., "document" or "script".
	**/
	final destination : js.html.RequestDestination;
	/**
		Returns a Headers object consisting of the headers associated with request. Note that headers added in the network layer by the user agent will not be accounted for in this object, e.g., the "Host" header.
	**/
	final headers : js.html.Headers;
	/**
		Returns request's subresource integrity metadata, which is a cryptographic hash of the resource being fetched. Its value consists of multiple hashes separated by whitespace. [SRI]
	**/
	final integrity : String;
	/**
		Returns a boolean indicating whether or not request is for a history navigation (a.k.a. back-foward navigation).
	**/
	final isHistoryNavigation : Bool;
	/**
		Returns a boolean indicating whether or not request is for a reload navigation.
	**/
	final isReloadNavigation : Bool;
	/**
		Returns a boolean indicating whether or not request can outlive the global in which it was created.
	**/
	final keepalive : Bool;
	/**
		Returns request's HTTP method, which is "GET" by default.
	**/
	final method : String;
	/**
		Returns the mode associated with request, which is a string indicating whether the request will use CORS, or will be restricted to same-origin URLs.
	**/
	final mode : js.html.RequestMode;
	/**
		Returns the redirect mode associated with request, which is a string indicating how redirects for the request will be handled during fetching. A request will follow redirects by default.
	**/
	final redirect : js.html.RequestRedirect;
	/**
		Returns the referrer of request. Its value can be a same-origin URL if explicitly set in init, the empty string to indicate no referrer, and "about:client" when defaulting to the global's default. This is used during fetching to determine the value of the `Referer` header of the request being made.
	**/
	final referrer : String;
	/**
		Returns the referrer policy associated with request. This is used during fetching to compute the value of the request's referrer.
	**/
	final referrerPolicy : js.html.ReferrerPolicy;
	/**
		Returns the signal associated with request, which is an AbortSignal object indicating whether or not request has been aborted, and its abort event handler.
	**/
	final signal : js.html.AbortSignal;
	/**
		Returns the URL of request as a string.
	**/
	final url : String;
	function clone():js.html.Request;
	final body : Null<ReadableStream<js.lib.Uint8Array>>;
	final bodyUsed : Bool;
	function arrayBuffer():js.lib.Promise<js.lib.ArrayBuffer>;
	function blob():js.lib.Promise<js.html.Blob>;
	function formData():js.lib.Promise<js.html.FormData>;
	function json():js.lib.Promise<Dynamic>;
	function text():js.lib.Promise<String>;
};