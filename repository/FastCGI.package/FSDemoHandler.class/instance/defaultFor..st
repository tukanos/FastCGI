other
defaultFor: aFSResponderRole 
	"Private - respond by setting stdout."

	| stream |
	stream := self getCGIStream.
	self putStartOn: stream.
	self putDescriptionOn: stream.
	self putInfoOn: stream.
	self putTestsOn: stream.
	self putDataOn: stream for: aFSResponderRole .
	self putEndOn: stream.

	aFSResponderRole stdout: stream contents.