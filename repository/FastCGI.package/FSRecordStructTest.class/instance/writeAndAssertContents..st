other
writeAndAssertContents: aByteArray 
	self setEmptyExternalStream.
	record writeToStream: extStream.
	self assertBytesWritten: aByteArray