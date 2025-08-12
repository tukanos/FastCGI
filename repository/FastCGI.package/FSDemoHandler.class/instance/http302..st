other
http302: aResponder
	"Private - respond by setting stdout.
	The presence of the Status header indicates we are returning a 'Non-parsed Header response', not a CGI response.
	See <http://cgi-spec.golux.com/draft-coar-cgi-v11-03-clean.html#7.1>"

	| stream |
	stream := WriteStream on: String new.
	stream 
		nextPutAll: 'Status: 302 Found';
		nextPutAll: self crlf;
		nextPutAll: 'Location: /index.html';
		nextPutAll: self crlf;
		nextPutAll: self crlf;
		nextPutAll: 
'<html><head><title>Redirection</title></head>
<body><p>If you are seeing this, the test has probably failed</p></body></html>' .
	aResponder stdout: stream contents.