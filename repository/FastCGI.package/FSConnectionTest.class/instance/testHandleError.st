other
testHandleError
	| ex a b |
	[self error: 'This is a test'] on: Error do: [ :e | ex	:= e].
	connection handleError: ex.
	a := self writeStream contents.
	b := (FSRecordSeries stderrId: 0 data: 'This is a test') asByteArray.
	self assert: a = b.