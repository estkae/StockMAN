tables
tableForSMUSER: aTable
	( aTable createFieldNamed: 'username' type: (platform varchar: 64) ) bePrimaryKey.
	aTable createFieldNamed: 'email' type: (platform varchar: 64).
	aTable createFieldNamed: 'password' type: (platform varchar: 64).