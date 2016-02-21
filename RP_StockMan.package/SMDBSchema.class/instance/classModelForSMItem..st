classes
classModelForSMItem: aClassModel
	#(#itemid #name #description #costPrice #sellPrice #vatCode #supplierId #category) do: [ :each |
		aClassModel newAttributeNamed: each ]