other
setRecordSeriesOn: aByteArray 
	self setExternalStreamOn: aByteArray.
	recordSeries := FSRecordSeries readFromStream: extStream