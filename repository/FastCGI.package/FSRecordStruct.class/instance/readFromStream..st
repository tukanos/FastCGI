other
readFromStream: aStream 
	"aStream has the protocol of aFSFCGIGsStream"

	| version |
	(version := aStream next) == FCGI_VERSION_1 ifFalse: [
		self error: 'Incorrect FCGI version. Expected: 1 Received: ' , version printString].
	type := aStream next.
	requestId := aStream next2.
	contentLength := aStream next2.
	paddingLength := aStream next.
	aStream next. "reserved"
	data := (aStream next: self contentLength).
	paddingLength > 0 ifTrue: [aStream next: paddingLength].
	self assertValid