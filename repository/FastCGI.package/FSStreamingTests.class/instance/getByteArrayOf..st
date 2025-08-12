other
getByteArrayOf: aCollOfRecords
	| stream |
	stream := WriteStream on: ByteArray new.
	aCollOfRecords do: [ :each |  stream nextPutAll: each asByteArray].
	^stream contents