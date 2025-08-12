other
send
	"Private - 
	1/ The Responder application sends CGI/1.1 stdout data to the Web server over FCGI_STDOUT, and CGI/1.1 stderr data over FCGI_STDERR. The application sends these concurrently, not one after the other.
	2/ After sending all its stdout and stderr data, the Responder application sends a FCGI_END_REQUEST record"

	self sendStderr.
	self sendStdout.
	self sendEndRequestSuccess.