mapping
descriptorForSMDBItemStock: aDescriptor
	| table |
	table := self tableNamed: 'SMItemStock'.
	aDescriptor table: table.
	#(id itemid stocklevel) do: [ :each |
		(aDescriptor newMapping: DirectMapping) 
			from: each to: (table fieldNamed: each) ]
