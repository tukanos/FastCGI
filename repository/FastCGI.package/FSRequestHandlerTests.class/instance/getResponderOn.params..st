other
getResponderOn: aStdinString params: aDictionary
	"aDictionary's keys and values should be strings"

	| swazooStream |
	swazooStream := FSStream
		readStream: (ReadStream on: #() asByteArray) 
		writeStream: (WriteStream on: ByteArray new).
	^(FSResponderRole onConnection: swazooStream) 
		stdin: aStdinString asByteArray
		params: aDictionary