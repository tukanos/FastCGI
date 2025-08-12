other
testLarge
	self paramAt: 'QUERY_STRING' put: 'large'.
	self setResponderRole.
	self answerRole