other
large: aResponder
	"Private - respond by setting stdout"

	| stream |
	stream := self getCGIStream.
	stream 
		nextPutAll: 
'<html><body>
<h3>Large test</h3>
<p>One large string to be sent (Multiple FCGI records)</p>
<p>'.
	7000 timesRepeat: [stream nextPutAll: 'Smalltalk '].
	stream nextPutAll: '</p><p>Thanks for playing!</p></body></html>'.
	aResponder stdout: stream contents.