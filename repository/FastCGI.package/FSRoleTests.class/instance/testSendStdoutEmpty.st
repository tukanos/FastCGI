other
testSendStdoutEmpty
	self setDefaultEmptyRole.
	role stdout: ''.
	role sendStdout.
	self assertBytesWritten: #(1 6 0 1 0 0 0 0) asByteArray