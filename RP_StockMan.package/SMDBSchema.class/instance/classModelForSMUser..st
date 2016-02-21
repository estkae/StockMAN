classes
classModelForSMUser: aClassModel
	#(#username #email #password) do: [ :each |
		aClassModel newAttributeNamed: each ]