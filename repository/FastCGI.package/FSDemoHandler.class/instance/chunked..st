other
chunked: aResponder
	"Private - respond by streaming to stdout.
	The presence of the Status header indicates we are returning a 'Non-parsed Header response', not a CGI response.
	See <http://cgi-spec.golux.com/draft-coar-cgi-v11-03-clean.html#7.1>"

	aResponder
		nextPutAll: 'Status: 200 OK';
		cr;
		nextPutAll: 'Content-type: text/html';
		cr;
		nextPutAll: 'Transfer-Encoding: chunked';
		cr;
		cr.
	self 
		putChunk: '<html><body>
<h1>Chunk Transfer encoding test</h1>
<p>This is the first chunk</p>'
		on: aResponder.
	self putChunk: '<p>Chunk2</p>' on: aResponder.
	self putChunk: '<p>Chunk3</p>' on: aResponder.
	self putChunk: '<p>Thanks for playing!</p></body></html>' on: aResponder.
	self putChunk: '' on: aResponder