other
testWriteEndRequest
	record := FSRecordStruct endRequestId: 2 protocolStatus: 0 appStatus: 0.
	self writeAndAssertContents: #(1 3 0 2 0 8 0 0 0 0 0 0 0 0 0 0) asByteArray