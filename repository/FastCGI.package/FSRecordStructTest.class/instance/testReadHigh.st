other
testReadHigh
	| dataBytes |
	dataBytes := (ByteArray new: (5 * 256 + 8)) atAllPut: 1; yourself.
	self setRecordOn: #(1 2 1 2 5 8 0 0) asByteArray , dataBytes  , (ByteArray with: 100).
	self assert: record requestId = (1 * 256 + 2).
	self assert: record contentLength = (5 * 256 + 8).
	self assert: extStream next = 100.
	self assert: record data = dataBytes