other
testAssertActiveRequest
	| r1 r2 |
	r1 := self getBeginRecord.
	r2 := FSRecordStruct 
				beginRequestId: 2
				role: 1
				flags: 0.
	self setConnectionOn: r1 asByteArray.
	connection assertActiveRequest: r1.
	connection assertActiveRequest: r2.
	connection makeActive.
	connection assertActiveRequest: r1.
	self should: [connection assertActiveRequest: r2] raise: Error