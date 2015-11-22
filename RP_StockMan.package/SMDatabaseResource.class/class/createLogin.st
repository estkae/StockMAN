utilities
createLogin
	"When you make changes here, you will most probably want to reset the cached login"
	
	"self resetLogin."
	
	^ Login new
		database: PostgreSQLPlatform new;
		username: 'home';
		password: 'zsawq21q';
		connectString: 'localhost:5432_stockman';
		encodingStrategy: #utf8;
		yourself