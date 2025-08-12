other
writeRecord: aFSRecord
	self assert: [aFSRecord isWSToApp not].
	aFSRecord writeToStream: stream.
	self flush.