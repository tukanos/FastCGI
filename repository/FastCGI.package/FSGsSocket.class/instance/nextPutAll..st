other
nextPutAll: aByteArray
	"(If streaming on a socket signal error if socket not valid)"

	aByteArray isEmpty ifTrue: [^self].
	(socket write: aByteArray) = aByteArray size ifTrue: [^self].
	self error: socket lastErrorString.