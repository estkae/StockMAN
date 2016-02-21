tables
tableForSMITEMSTOCK: aTable
	( aTable createFieldNamed: 'id' type: (platform integer ) ) bePrimaryKey.
		aTable createFieldNamed: 'itemid' type: (platform integer).
		aTable createFieldNamed: 'stocklevel' type: (platform integer	).
								