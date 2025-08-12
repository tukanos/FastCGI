other
testWriteEndRequest2
	record := FSRecordStruct endRequestId: 1 protocolStatus:  0 appStatus: 0.
	self writeAndAssertContents: #(1 3 0 1 0 8 0 0 0 0 0 0 0 0 0 0) asByteArray.
	record := FSRecordStruct endRequestId: 1 protocolStatus:  2 appStatus: 0.
	self writeAndAssertContents: #(1 3 0 1 0 8 0 0 0 0 0 0 2 0 0 0) asByteArray.
	record := FSRecordStruct endRequestId: 1 protocolStatus:  0 appStatus: 1.
	self writeAndAssertContents: #(1 3 0 1 0 8 0 0 0 0 0 1 0 0 0 0) asByteArray.