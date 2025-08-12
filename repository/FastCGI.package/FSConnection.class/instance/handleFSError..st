other
handleFSError: anException
	"Private - handle the protocol error by sending back an endRequest record.
	My reading of the spec is that appStatus needs to be 0 otherwise the server will think we have exited.
	We are outside #serve's error handling, if we get an error (reporting the error!) notify the FSServer" 

	[self server notifyFSError: anException.
	self writeRecord: (
		FSRecordStruct 
			endRequestId: self activeIdOrManagement
			protocolStatus: anException protocolStatus
			appStatus: 0)] on: Error do: [ :e | self notifyUnreportableError: anException description]