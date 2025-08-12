other
asByteArray
	| stream |
	stream := WriteStream on: ByteArray new.
	self writeToStream: stream.
	^stream contents