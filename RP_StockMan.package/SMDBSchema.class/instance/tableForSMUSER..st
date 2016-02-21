tables
tableForSMUSER: aTable
	(aTable createFieldNamed: 'id' type: platform serial) bePrimaryKey.
	aTable createFieldNamed: 'username' type: (platform varchar: 64).
	aTable createFieldNamed: 'email' type: (platform varchar: 64).
	aTable createFieldNamed: 'password' type: (platform varchar: 64).