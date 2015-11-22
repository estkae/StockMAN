utilities
createTables
	"self createTables"
	"This has to be done only once, be sure to set #login"

	| session |
	session := self session.
	session accessor
		login;
		logging: true.
	session inTransactionDo: [ session createTables ].
	session accessor logout