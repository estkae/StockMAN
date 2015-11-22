initialization
validateLogin

	| user myPassword |
	
	user := self findUserByEmail: self email.
	"myPassword :=  sha1 hashMessage: self password."
	myPassword := self password.

	( user notNil and: [ user password = myPassword asString ] )
		ifTrue: [ self answer: user ].
		"ifFalse: [ self answer: nil ]."