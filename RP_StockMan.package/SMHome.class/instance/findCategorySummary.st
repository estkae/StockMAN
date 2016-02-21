as yet unclassified
findCategorySummary

	| query | 
	query := (Query readManyOf: SMDBCategorySummary ) orderBy: [ :each | each category ].
	^ self session glorpSession execute: query.

