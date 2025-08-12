other
streamRecord: aFSRecord
	"Private - SW Experimental
	-Write all but the last record of a Series"

	self assert: [aFSRecord isWSToApp not].
	aFSRecord streamToStream: stream.
	"stream flush. "