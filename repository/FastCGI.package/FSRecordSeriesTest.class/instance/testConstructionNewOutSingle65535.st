other
testConstructionNewOutSingle65535
	| data |
	data := ((String new: 65534) atAllPut: $a; yourself) , 'b'.
	recordSeries := FSRecordSeries stdoutId: 1 data: data.
	self assertConstructionCommon.
	self assert: recordSeries records size = 2.
	self assert: (recordSeries records at: 2) isLastInSeries.
	self assert: recordSeries firstRecord data = data asByteArray.
	self assert: recordSeries lastRecord data isEmpty