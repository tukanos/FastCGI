other
nextPut: anObject
	"This method is part of a puttableStream protocol for stdout"
	
	self nextPutAll: (ByteArray with: anObject asInteger)