other
testWriteGetValuesResultPairsEmpty
	record := FSRecordStruct getValuesResultPairs: #().
	self writeAndAssertContents: #(1 10 0 0 0 0 0 0 ) asByteArray.