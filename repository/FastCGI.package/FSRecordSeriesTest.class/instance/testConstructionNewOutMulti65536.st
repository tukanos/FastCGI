other
testConstructionNewOutMulti65536

	recordSeries := FSRecordSeries stdoutId: 1
				data: ((String new: 65534) atAllPut: $a; yourself) , 'b' , 'c'.
	self assertConstructionCommon.
	self assert: recordSeries records size = 3.
	self assert: (recordSeries records at: 3) isLastInSeries.
	self assert: recordSeries firstRecord data 
				= (((String new: 65534) atAllPut: $a; yourself) , 'b') asByteArray.
	self assert: (recordSeries records at: 2) data = 'c' asByteArray.
	self assert: recordSeries lastRecord data isEmpty