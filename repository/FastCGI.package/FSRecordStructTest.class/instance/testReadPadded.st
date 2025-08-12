other
testReadPadded
	self setRecordOn: #(1 5 0 1 0 5 2 0 1 2 3 4 5 6 7 8 9) asByteArray.
	self assert: extStream next = 8.
	self assertCommon.
	self assert: record data = #(1 2 3 4 5) asByteArray