other
testException
	self paramAt: 'QUERY_STRING' put: 'exception'.
	self setResponderRole.
	self should: [self answerRole] raise: Error