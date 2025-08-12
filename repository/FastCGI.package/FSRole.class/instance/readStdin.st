other
readStdin
	| recordUnit |
	(recordUnit := self connection nextAppRecord) type = FCGI_STDIN 
		ifFalse: [self error: 'Error expected: FCGI_STDIN, Role: ' , self roleName].
	stdin := recordUnit data