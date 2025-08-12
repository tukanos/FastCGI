other
stream: aResponder withDelay: seconds
	"Private - respond by streaming to stdout"

	aResponder 
		nextPutAll: self getCGIStream contents;
		nextPutAll: 
'<html><body>
<h3>Streaming test</h3>
<p>9 "paragraphs" will be streamed.</p>'.
	'Smalltalk' do: [ :each |
		aResponder 
			nextPutAll: '<p>';
			nextPutAll: ((String new: 5000) atAllPut: each; yourself);
			nextPutAll: '</p>'.
		seconds notNil ifTrue: [(Delay forSeconds: seconds) wait]].
	aResponder nextPutAll: '<p>Thanks for playing!</p>'.	
	aResponder nextPutAll: '</body></html>'.