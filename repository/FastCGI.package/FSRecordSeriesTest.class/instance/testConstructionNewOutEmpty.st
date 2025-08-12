other
testConstructionNewOutEmpty
	recordSeries := FSRecordSeries stdoutId: 1 data: ''.
	self assertConstructionCommon.
	self assert: recordSeries records size = 2. "Not sure why this works ... from reading code, this appears to always have been true - dkh"
	self assert: recordSeries requestId = 1.
	self assert: recordSeries firstRecord isLastInSeries.
	self assert: recordSeries firstRecord data isEmpty