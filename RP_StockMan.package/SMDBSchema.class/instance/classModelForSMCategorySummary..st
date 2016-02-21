classes
classModelForSMCategorySummary: aClassModel
	#(#id #category #sales_revenue #volume #target_volume #margin #orders #orders_outstanding #promotions #promotions_active) do: [ :each |
		aClassModel newAttributeNamed: each ]