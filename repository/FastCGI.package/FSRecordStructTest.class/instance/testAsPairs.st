other
testAsPairs
	record := FSRecordStruct getValuesPairs: (Array 
		with: (FSNameValuePair name: 'a' value: 'b')
		with: (FSNameValuePair name: 'c' value: 'd')).
	self writeAndAssertContents: #(1 9 0 0 0 8 0 0 1 1 97 98 1 1 99 100) asByteArray.