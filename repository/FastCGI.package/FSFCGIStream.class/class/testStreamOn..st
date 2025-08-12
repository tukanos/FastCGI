other
testStreamOn: aByteArray
	"SW Test helper method.
	Answer a Stream which has the same protocol (or is the same) as  FSFCGIStream or FasTalk's FCGIExternalStream, but on a ReadWriteByteStream.
	-aByteArray is set (and reset) into the readStream."

	| swazooStream |
	swazooStream := FSStream
		readStream: (ReadStream on: aByteArray asByteArray) 
		writeStream: (WriteStream on: ByteArray new).
	^self new stream: swazooStream.