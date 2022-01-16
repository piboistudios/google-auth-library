package google_auth_library;

@:jsRequire("google-auth-library", "LoginTicket") extern class LoginTicket {
	/**
		Create a simple class to extract user ID from an ID Token
	**/
	function new(?env:String, ?pay:TokenPayload);
	@:optional
	private var envelope : Dynamic;
	@:optional
	private var payload : Dynamic;
	function getEnvelope():Null<String>;
	function getPayload():Null<TokenPayload>;
	/**
		Create a simple class to extract user ID from an ID Token
	**/
	function getUserId():Null<String>;
	/**
		Returns attributes from the login ticket.  This can contain
		various information about the user session.
	**/
	function getAttributes():{
		var envelope : Null<String>;
		var payload : Null<TokenPayload>;
	};
	static var prototype : LoginTicket;
}