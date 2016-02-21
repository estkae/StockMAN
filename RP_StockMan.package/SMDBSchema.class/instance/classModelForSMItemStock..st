classes
classModelForSMItemStock: aClassModel
	#(#id #itemid #stocklevel) do: [ :each |
		aClassModel newAttributeNamed: each ]