other
testSendStderrEmpty
	self setDefaultEmptyRole.
	role sendStderr.
	self assert: self writeStream contents isEmpty