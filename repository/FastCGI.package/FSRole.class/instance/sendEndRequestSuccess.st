other
sendEndRequestSuccess
	"SPEC6.2 After sending all its stdout and stderr data, the Responder application sends a FCGI_END_REQUEST record. The application sets the protocolStatus component to FCGI_REQUEST_COMPLETE and the appStatus component to the status code that the CGI program would have returned via the exit system call."

	self connection writeRecord: (FSRecordStruct
		endRequestId: self activeId
		protocolStatus:  FCGI_REQUEST_COMPLETE 
		appStatus: 0)