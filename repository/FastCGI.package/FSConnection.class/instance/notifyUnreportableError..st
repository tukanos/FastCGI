other
notifyUnreportableError: aString
	"Private - an error has been signaled in trying to report an error back to the WebServer.
	*We are outside #serve's error handling. 
	Inform the server, If this signals an error ignore it ... we have done all we can ie (an error trying to report an error about reporting an error ... something is seriously wrong at this point)" 

	[self server notifyUnreportableError: aString]
		on: Error
		do: [ :e | ]