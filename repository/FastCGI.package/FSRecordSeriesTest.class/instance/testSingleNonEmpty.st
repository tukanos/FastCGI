other
testSingleNonEmpty
	self setSingleNonEmpty.
	self assert: (recordSeries isKindOf: FSRecordSeries).
	self assert: extStream next = 100.
	self assert: recordSeries records size = 2.
	self assert: recordSeries data = #(1 2 3 4 5) asByteArray.
	self assert: recordSeries requestId = 1.
	recordSeries assertValid