other
testWriteStderr
	recordSeries := (FSRecordSeries stderrId: 1 data: 'abc').
	self writeAndAssertContents: #(1 7 0 1 0 3 0 0 97 98 99 1 7 0 1 0 0 0 0) asByteArray