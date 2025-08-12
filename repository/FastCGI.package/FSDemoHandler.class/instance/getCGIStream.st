other
getCGIStream
	"Private - Helper method, answer a stream which already contains the standard CGI headers"

	| stream |
	stream := WriteStream on: String new.
	stream
		nextPutAll: 'Content-type: text/html';
		nextPutAll: self crlf;
		nextPutAll: self crlf.
	^stream