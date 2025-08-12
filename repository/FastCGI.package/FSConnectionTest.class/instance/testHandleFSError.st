other
testHandleFSError
	| ex |
	[FSError signalCantMultiplex] on: Error do: [ :e | ex	:= e].
	connection server:  FSSocketServer new.
	connection handleFSError: ex.
	self assert:self writeStream contents = (FSRecordStruct 
		endRequestId: 0 
		protocolStatus:  1
		appStatus: 0) asByteArray