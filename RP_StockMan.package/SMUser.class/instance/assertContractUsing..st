accessing
assertContractUsing: object
	object assert: (self username isNil or: [ self username isString ]).
	object assert: (self email isNil or: [ self email isString ]).
	object assert: (self password isNil or: [ self password isString ]).