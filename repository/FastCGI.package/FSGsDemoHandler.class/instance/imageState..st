other
imageState: aResponder

	| stream |
	"MemoryManager current collectGarbage."
	stream := self getCGIStream.
	stream nextPutAll: '<html><body><h3>Here is where we tell you interesting things about GemStone</h3>'.
"
	self listInstancesOf: Process on: stream.
	stream display: '<html><body><h3>Sockets:</h3>'.
	self listInstancesOf: Socket on: stream.
	stream display: '<html><body><h3>Packages:</h3>'.
	self putPackageNamesOn: stream.
	stream display: '</ul><p>Thanks for playing!</p></body></html>'.
"
	aResponder stdout: stream contents.