other
testQueryEmpty
	self paramAt: 'QUERY_STRING' put: ''.
	self setResponderRole.
	self shouldnt: [self answerRole] raise: Error