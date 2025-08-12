other
status500: aResponder
	"Private - respond by setting stdout.
	The presence of the Status header indicates we are returning a 'Non-parsed Header response', not a CGI response.
	See <http://cgi-spec.golux.com/draft-coar-cgi-v11-03-clean.html#7.1>"

	| stream |
	stream := WriteStream on: String new.
	stream
		nextPutAll: 'Status: 500 Internal Server Error';
		nextPutAll: self crlf;
		nextPutAll: 'Content-type: text/html';
		nextPutAll: self crlf;
		nextPutAll: self crlf;
		nextPutAll: '<html><body>
<h1>500 Internal Server Error</h1>
<p>Thanks for playing!</p>
</body></html>'.
	aResponder stdout: stream contents