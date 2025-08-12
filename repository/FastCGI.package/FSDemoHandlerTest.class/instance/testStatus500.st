other
testStatus500
	self paramAt: 'QUERY_STRING' put: 'status500'.
	self setResponderRole.
	self answerRole.
	self assert: (role stdout matchPattern: #('Status: 500' $*))