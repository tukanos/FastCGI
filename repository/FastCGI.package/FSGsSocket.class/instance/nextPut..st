other
nextPut: aByte
	"(If streaming on a socket signal error if socket not valid)"

	self nextPutAll: (ByteArray with: aByte).