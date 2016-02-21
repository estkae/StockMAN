accessing
findUserByEmail: anEmail

	| query | 
	query := (Query readOneOf: SMDBUser where: [ :each | each email = anEmail] )
		yourself.
	^ self session glorpSession execute: query
	