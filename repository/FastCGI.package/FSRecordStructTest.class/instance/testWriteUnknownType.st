other
testWriteUnknownType
	record := FSRecordStruct unknownType: 2.
	self writeAndAssertContents: #(1 11 0 0 0 8 0 0 2 0 0 0 0 0 0 0) asByteArray.
	record := FSRecordStruct unknownType: 14.
	self writeAndAssertContents: #(1 11 0 0 0 8 0 0 14 0 0 0 0 0 0 0) asByteArray