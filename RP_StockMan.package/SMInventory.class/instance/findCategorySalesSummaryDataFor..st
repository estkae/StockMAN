accessing
findCategorySalesSummaryDataFor: aCategory

	| query | 
	self session glorpSession: nil.

	query := (Query readOneOf: SMDBCategorySalesSummary where: [ :each | each category = aCategory ] ).
	^ self session glorpSession execute: query