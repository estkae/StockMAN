mapping
descriptorForSMDBCategorySummary: aDescriptor
	| table |
	table := self tableNamed: 'SMCategorySummary'.
	aDescriptor table: table.
	#(id category sales_revenue volume target_volume margin orders orders_outstanding promotions promotions_active) do: [ :each |
		(aDescriptor newMapping: DirectMapping) 
			from: each to: (table fieldNamed: each) ]
