other
testHandleFSErrorEx
	| ex |
	[FSError signalCantMultiplex ] on: FSError do: [ :e | ex	:= e].
	connection stream: nil.
	connection handleFSError: ex.