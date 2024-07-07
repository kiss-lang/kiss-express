package express_session;

/**
	This interface allows you to declare additional properties on your session object using [declaration merging](https://www.typescriptlang.org/docs/handbook/declaration-merging.html).
**/
typedef SessionData = {
	var cookie : Cookie;
};