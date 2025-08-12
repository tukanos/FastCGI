other
testSendStdoutBytes
	self setDefaultEmptyRole.
	role stdout: 'abc' asByteArray.
	role sendStdout.
	self assertBytesWritten: #(1 6 0 1 0 3 0 0 97 98 99 1 6 0 1 0 0 0 0) asByteArray