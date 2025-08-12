other
convertToByteArray: aFSRecord
	"Test helper method.
	-A ReadWriteByteStream (or at least WriteByteStream) with the protocol of this class, is used to create a ByteArray of the aFSRecord.
	See also #testStreamOn:"

	| stream swazooStream |
	swazooStream := FSStream
		readStream: (ReadStream on: #() asByteArray) 
		writeStream: (WriteStream on: ByteArray new).

	stream := self new stream: swazooStream.
	aFSRecord writeToStream: stream.
	^swazooStream writeStream contents