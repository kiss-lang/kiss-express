package passport;

typedef Profile = {
	var provider : String;
	var id : String;
	var displayName : String;
	@:optional
	var username : String;
	@:optional
	var name : {
		var familyName : String;
		var givenName : String;
		@:optional
		var middleName : String;
	};
	@:optional
	var emails : Array<{
		var value : String;
		@:optional
		var type : String;
	}>;
	@:optional
	var photos : Array<{
		var value : String;
	}>;
};