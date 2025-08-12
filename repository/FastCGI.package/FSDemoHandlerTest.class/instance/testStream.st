other
testStream
	self paramAt: 'QUERY_STRING' put: 'stream'.
	self setResponderRole.
	self answerRole.
	self assert: (self writeStream contents notEmpty)