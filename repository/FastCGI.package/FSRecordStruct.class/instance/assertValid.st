other
assertValid
	(self isBeginRequest and: [self contentLength ~= 8]) 
		ifTrue: 
			[self error: 'Malformed BeginRequest packet received with content length: ' 
						, self contentLength printString]