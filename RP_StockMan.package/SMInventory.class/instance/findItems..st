accessing
findItems: aCategory

	| query | 
	self session glorpSession: nil.
	
	query := (Query readManyOf: SMDBItem where: [ :each | each category = aCategory ] ).
	^ self session glorpSession execute: query