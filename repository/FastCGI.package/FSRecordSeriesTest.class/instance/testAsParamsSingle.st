other
testAsParamsSingle
	| params |
	self setRecordSeriesOn: #(1 4 0 1 0 4 0 0 1 1 97 98 1 4 0 1 0 0 0 0) asByteArray.
	params := recordSeries asParams.
	self assert: (params at: 'a') = 'b'.
	self assert: params size = 1