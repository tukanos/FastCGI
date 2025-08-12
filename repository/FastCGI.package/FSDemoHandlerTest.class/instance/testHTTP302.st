other
testHTTP302
	self paramAt: 'QUERY_STRING' put: 'http302'.
	self setResponderRole.
	self answerRole.
	self assert: (role stdout matchPattern: #('Status: 302' $*))