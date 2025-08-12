other
testHandleErrorEx
	| ex |
	[self error: 'This is a test'] on: Error do: [ :e | ex	:= e].
	connection stream: nil.
	connection handleError: ex.