other
setExternalStreamOn: aByteArray 
	"This method sets a Stream which has the same protocol (or is the same) as  FSStream or FasTalk's FCGIExternalStream, but on a ReadWriteByteStream.
	-aByteArray is set (and reset) into the readStream.
	-The contents of the writeStream can be accessed through (FSStreamingTests>>writeStream).
	-A Method that needs similar attention is FSStream>>convertToByteArray: "

	extStream := FSFCGIStream testStreamOn: aByteArray