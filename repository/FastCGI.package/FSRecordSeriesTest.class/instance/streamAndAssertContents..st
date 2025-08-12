other
streamAndAssertContents: aByteArray 
	self setEmptyExternalStream.
	recordSeries streamToStream: extStream.
	self assertBytesWritten: aByteArray