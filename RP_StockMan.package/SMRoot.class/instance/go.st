running
go

	| loginAnswer user |
	loginAnswer := self call: SMLogin new.

	user := loginAnswer.
	( user = nil ) 
		ifTrue: [ 
			"self session login: user."
			"self call: CTLoggedInComponent new."
			Transcript show: 'I am not logged in ...'
		]
		ifFalse: [ 
			"self session login: user."
			"self call: CTLoggedInComponent new."
			self call: SMMain new.
		].