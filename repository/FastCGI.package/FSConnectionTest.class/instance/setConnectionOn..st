other
setConnectionOn: aByteArray 
	self setExternalStreamOn: aByteArray.
	connection := FSConnection new stream: extStream