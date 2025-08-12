other
readParams
	| recordUnit |
	(recordUnit := self connection nextAppRecord) type = FCGI_PARAMS 
		ifFalse: [self error: 'Error expected: FCGI_PARAMS, Role: ' , self roleName].
	params := recordUnit asParams