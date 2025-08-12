other
testNotIncluded
	self paramAt: 'QUERY_STRING' put: 'notASelector'.
	self setResponderRole.
	self shouldnt: [self answerRole] raise: Error