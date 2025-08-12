other
isStarting
	^self serveLoop isNil and: [ socket notNil ]