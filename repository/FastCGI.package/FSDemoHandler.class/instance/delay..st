other
delay: aResponder
	"Private - respond by setting stdout.
	The presence of the Status header indicates we are returning a 'Non-parsed Header response', not a CGI response.
	See <http://cgi-spec.golux.com/draft-coar-cgi-v11-03-clean.html#7.1>"

	| stream |
	(Delay forMilliseconds: 200) wait.
	stream := WriteStream on: String new.
	stream
		nextPutAll: 'Status: 200 OK';
		nextPutAll: self crlf;
		nextPutAll: 'Content-type: text/html';
		nextPutAll: self crlf;
		nextPutAll: self crlf;
		nextPutAll: '<html><body>
<h1>Delayed 200 OK</h1>
<p>Thanks for playing!</p>
</body></html>'.
	aResponder stdout: stream contents