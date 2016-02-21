tables
tableForSMCATEGORYSUMMARY: aTable
	(aTable createFieldNamed: 'id' type: platform serial) bePrimaryKey.
	aTable createFieldNamed: 'category' type: (platform varchar: 64).
	aTable createFieldNamed: 'sales_revenue' type: (platform integer).
	aTable createFieldNamed: 'volume' type: (platform integer).
	aTable createFieldNamed: 'target_volume' type: (platform integer).
	aTable createFieldNamed: 'margin' type: (platform integer).
	aTable createFieldNamed: 'orders' type: (platform integer).
	aTable createFieldNamed: 'orders_outstanding' type: (platform integer).
	aTable createFieldNamed: 'promotions' type: (platform integer).
	aTable createFieldNamed: 'promotions_active' type: (platform integer).
	
"id category sales_revenue volume target_volume margin orders orders_outstanding promotions promotions_active"