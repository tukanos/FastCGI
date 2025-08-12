other
testStreamReading: aByteObject
	"SW Test helper method.
	-aByteArray is set (and reset) into the readStream."

	^self readStream: aByteObject asByteArray readStream writeStream: ByteArray writeStream