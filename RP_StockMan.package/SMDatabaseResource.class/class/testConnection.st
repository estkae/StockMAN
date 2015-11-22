utilities
testConnection
	"self testConnection"
	
	| session result |
	session := self session.
	session accessor
		login;
		logging: true.
	result := session accessor executeSQLString: 'SELECT CURRENT_TIME, CURRENT_DATE'.
	session accessor logout.
	^ result