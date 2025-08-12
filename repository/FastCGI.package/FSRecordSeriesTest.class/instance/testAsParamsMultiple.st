other
testAsParamsMultiple
	| params |
	self setRecordSeriesOn: #(1 4 0 1 0 8 0 0 1 1 97 98 1 1 99 100 1 4 0 1 0 0 0 0) asByteArray.
	params := recordSeries asParams.
	self assert: (params at: 'a') = 'b'.
	self assert: (params at: 'c') = 'd'.
	self assert: params size = 2