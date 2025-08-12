other
testZeroNonEmpty
	self setZeroNonEmpty.
	self assert: (recordSeries isKindOf: FSRecordSeries).
	self assert: extStream next = 100.
	self assert: recordSeries records size = 1.
	self assert: recordSeries data isEmpty.
	self assert: recordSeries requestId = 1.
	recordSeries assertValid