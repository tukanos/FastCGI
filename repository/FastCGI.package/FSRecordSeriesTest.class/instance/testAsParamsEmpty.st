other
testAsParamsEmpty
	| params |
	self setRecordSeriesOn: #(1 4 0 1 0 0 0 0 ) asByteArray.
	params := recordSeries asParams.
	self assert: params isEmpty