other
testWrite
	record := FSRecordStruct 
				type: 6
				requestId: 1
				data: #(1 2) asByteArray.
	self writeAndAssertContents: #(1 6 0 1 0 2 0 0 1 2) asByteArray.
	record := FSRecordStruct 
				type: 6
				requestId: 1
				data: 'abc'.
	self writeAndAssertContents: #(1 6 0 1 0 3 0 0 97 98 99) asByteArray.
	record := FSRecordStruct 
				type: 5
				requestId: 2
				data: #(1 2) asByteArray.
	self writeAndAssertContents: #(1 5 0 2 0 2 0 0 1 2) asByteArray