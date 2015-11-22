accessing
newGlorpSession
	| session |
	session := SMDatabaseResource session.
	session accessor logging: true.
	^ session