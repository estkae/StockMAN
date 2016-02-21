as yet unclassified
findItemStocklevel: anId

	| query | 
	self session glorpSession: nil.

	query := (Query readOneOf: SMDBItemStock where: [ :each | each id = anId ] ).
	^ self session glorpSession execute: query