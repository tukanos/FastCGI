other
nextPutAll: aByteObject
	"This method is part of a puttableStream protocol for stdout
	-Note: an empty string will *not* be sent. (The WebServer will take that as an indication that
	we have finished sending stdout. If the stdout string is empty or nil when the server returns from answering the role,
	it will automatically write an empty stdout record for us."
	
	self connection nextPutAll: aByteObject