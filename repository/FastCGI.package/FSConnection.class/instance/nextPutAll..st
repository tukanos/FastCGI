other
nextPutAll: aByteObject
	"Stream to stdout."

	self streamRecord: (FSRecordSeries stdoutId: self activeId data: aByteObject)