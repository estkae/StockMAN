accessing
glorpSession
	glorpSession ifNil: [ glorpSession := self newGlorpSession ].
	glorpSession accessor isLoggedIn
		ifFalse: [ glorpSession accessor login ].
	^ glorpSession