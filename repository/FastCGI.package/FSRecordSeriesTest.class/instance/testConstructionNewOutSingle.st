other
testConstructionNewOutSingle
	recordSeries := self getStdoutRecord.
	self assertConstructionCommon.
	self assert: recordSeries records size = 2.
	self assert: (recordSeries records at: 2) isLastInSeries.
	self assert: recordSeries firstRecord data = 'abc' asByteArray.
	self assert: recordSeries lastRecord data isEmpty