other
testReadBeginRequest
	self setRecordOn: #(1 1 0 1 0 8 0 0 1 2 3 4 5 6 7 8 9) asByteArray.
	self assert: extStream next = 9.
	self assertCommon.
	self assert: record data = #(1 2 3 4 5 6 7 8) asByteArray.
	self assert: record role = (1 * 256 + 2).
	self assert: record flags = 3.
	self assert: record wantsKeepConnection