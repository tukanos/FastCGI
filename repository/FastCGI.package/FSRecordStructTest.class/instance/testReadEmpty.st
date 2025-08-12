other
testReadEmpty
	self setRecordOn: #(1 5 0 1 0 0 0 0 0 1 0) asByteArray.
	self assertCommon.
	self assert: record contentLength = 0.
	self assert: record type = 5.
	self assert: record data isEmpty.
	self assert: record isLastInSeries.
	self assert: extStream next = 0.
	self assert: extStream next = 1