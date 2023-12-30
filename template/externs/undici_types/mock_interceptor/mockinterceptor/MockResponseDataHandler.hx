package undici_types.mock_interceptor.mockinterceptor;

typedef MockResponseDataHandler<TData> = (opts:MockResponseCallbackOptions) -> ts.AnyOf3<String, node.buffer.Buffer, TData>;