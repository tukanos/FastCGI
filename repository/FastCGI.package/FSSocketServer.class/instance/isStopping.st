other
isStopping
	^self serveLoop notNil and: [ socket isNil ]