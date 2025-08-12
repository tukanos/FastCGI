other
isLastInSeries
	"Private - SPEC 3.3 ... a series (is) ... followed by an empty record (length == 0) "

	self assert: [self isStreamRecord].
	^self contentLength = 0