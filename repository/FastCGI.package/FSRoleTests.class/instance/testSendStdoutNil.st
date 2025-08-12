other
testSendStdoutNil
	self setDefaultEmptyRole.
	role stdout: nil.
	role sendStdout.
	self assertBytesWritten: #(1 6 0 1 0 0 0 0) asByteArray