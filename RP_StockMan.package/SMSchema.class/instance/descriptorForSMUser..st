mapping
descriptorForSMUser: aDescriptor
	| table |
	table := self tableNamed: 'SMUser'.
	aDescriptor table: table.
	#(username email password) do: [ :each |
		(aDescriptor newMapping: DirectMapping) 
			from: each to: (table fieldNamed: each) ]
