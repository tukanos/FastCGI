other
testReadData
	self setRecordOn: #(1 4 0 1 0 5 0 0 1 2 3 4 5 6 7 8 9) asByteArray.
	self assert: extStream next = 6.
	self assertCommon.
	self assert: record data = #(1 2 3 4 5) asByteArray