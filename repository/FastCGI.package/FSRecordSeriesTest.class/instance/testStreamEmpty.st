other
testStreamEmpty
	recordSeries := FSRecordSeries stdoutId: 1 data: ''.
	self writeAndAssertContents: #(1 6 0 1 0 0 0 0) asByteArray