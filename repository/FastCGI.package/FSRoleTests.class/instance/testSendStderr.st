other
testSendStderr
	self setDefaultEmptyRole.
	role stderr: 'abc'.
	role sendStderr.
	self assertBytesWritten: #(1 7 0 1 0 3 0 0 97 98 99 1 7 0 1 0 0 0 0) asByteArray