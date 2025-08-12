other
setRecordOn: aByteArray 
	self setExternalStreamOn: aByteArray.
	record := FSRecordStruct readFromStream: extStream