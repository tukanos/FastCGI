other
cgiLocation: aResponder
	"Private - respond by setting stdout"

	| stream |
	stream := WriteStream on: String new.
	stream
		nextPutAll: 'Location: /index.html';
		nextPutAll: self crlf;
		nextPutAll: self crlf.
	aResponder stdout: stream contents