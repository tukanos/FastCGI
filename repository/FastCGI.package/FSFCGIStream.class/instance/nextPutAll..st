other
nextPutAll: aByteArray
	"(If streaming on a socket signal error if socket not valid)"

	aByteArray isEmpty ifFalse: [stream nextPutAll: aByteArray]