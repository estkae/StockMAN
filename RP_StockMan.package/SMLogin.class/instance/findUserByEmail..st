accessing
findUserByEmail: anEmail

	| query | 
	query := (Query readOneOf: SMUser where: [ :each | each email = anEmail] )
		yourself.
	^ self session glorpSession execute: query
	