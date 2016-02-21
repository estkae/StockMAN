as yet unclassified
findItems: aCategory

	| query | 
	query := (Query readManyOf: SMDBItem where: [ :each | each category = aCategory ] ).
	^ self session glorpSession execute: query