other
testReadBeginRequestKeepConnNot
	self setRecordOn: #(1 1 0 1 0 8 0 0 1 2 0 4 5 6 7 8 9) asByteArray.
	self assert: extStream next = 9.
	self assertCommon.
	self deny: record wantsKeepConnection