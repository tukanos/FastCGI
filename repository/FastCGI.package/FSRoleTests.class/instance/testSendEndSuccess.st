other
testSendEndSuccess
	self setDefaultEmptyRole.
	role sendEndRequestSuccess.
	self assertBytesWritten: #(1 3 0 1 0 8 0 0 0 0 0 0 0 0 0 0) asByteArray