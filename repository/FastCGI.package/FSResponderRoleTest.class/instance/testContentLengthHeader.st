other
testContentLengthHeader
	role := FSResponderRole new.
	role stdin: '' params: (Dictionary new).
	self assert: role contentLengthHeader = 0.
	role params at: 'CONTENT_LENGTH' put: ''. "http://code.google.com/p/glassdb/issues/detail?id=298"
	self assert: role contentLengthHeader = 0.
	role params at: 'CONTENT_LENGTH' put: '30'.
	self assert: role contentLengthHeader = 30.