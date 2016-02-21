tables
tableForSMITEM: aTable
	( aTable createFieldNamed: 'itemid' type: (platform integer) ) bePrimaryKey.
		aTable createFieldNamed: 'itemname' type: (platform varchar: 64).
		aTable createFieldNamed: 'description' type: (platform varchar: 64	).
		aTable createFieldNamed: 'costPrice' type: (platform float	).
		aTable createFieldNamed: 'sellPrice' type: (platform float	).
		aTable createFieldNamed: 'vatCode' type: (platform integer	).
		aTable createFieldNamed: 'supplierId' type: (platform integer	).
		aTable createFieldNamed: 'category' type: (platform varchar: 64	).
								