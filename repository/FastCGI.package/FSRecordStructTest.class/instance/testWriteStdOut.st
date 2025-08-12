other
testWriteStdOut
	"?"
	record := FSRecordStruct type: 6 requestId: 2 data: ''.
	self writeAndAssertContents: #(1 6 0 2 0 0 0 0) asByteArray.
	record := FSRecordStruct type: 6 requestId: 2 data: 'abc'.
	self writeAndAssertContents: #(1 6 0 2 0 3 0 0 97 98 99) asByteArray