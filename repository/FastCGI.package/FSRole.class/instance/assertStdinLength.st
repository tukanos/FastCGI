other
assertStdinLength
	self contentLengthHeader = stdin size ifFalse: [
		self error: 'Incorrect content length. Role: ' , self roleName]