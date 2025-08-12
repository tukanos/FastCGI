other
testStreamStdout
	recordSeries := self getStdoutRecord.
	self streamAndAssertContents: #(1 6 0 1 0 3 0 0 97 98 99) asByteArray