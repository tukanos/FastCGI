other
writeAndAssertContents: aByteArray 
	self setEmptyExternalStream.
	recordSeries writeToStream: extStream.
	self assertBytesWritten: aByteArray