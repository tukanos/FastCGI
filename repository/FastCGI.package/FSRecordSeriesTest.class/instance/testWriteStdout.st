other
testWriteStdout
	recordSeries := self getStdoutRecord.
	self writeAndAssertContents: #(1 6 0 1 0 3 0 0 97 98 99 1 6 0 1 0 0 0 0) asByteArray