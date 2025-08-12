other
testStatus200
	self paramAt: 'QUERY_STRING' put: 'status200'.
	self setResponderRole.
	self answerRole.
	self assert: (role stdout matchPattern: #('Status: 200 OK' $*))