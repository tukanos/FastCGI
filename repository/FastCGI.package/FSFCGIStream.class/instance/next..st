other
next: aCount 
	"Answer a ByteArray.
	(If streaming on a socket, block if not available, and signal error if socket not valid)"

	^stream nextBytes: aCount