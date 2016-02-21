mapping
descriptorForSMDBItem: aDescriptor
	| table |
	table := self tableNamed: 'SMItem'.
	aDescriptor table: table.
	#(itemid itemname description costPrice sellPrice vatCode supplierId category) do: [ :each |
		(aDescriptor newMapping: DirectMapping) 
			from: each to: (table fieldNamed: each) ]
