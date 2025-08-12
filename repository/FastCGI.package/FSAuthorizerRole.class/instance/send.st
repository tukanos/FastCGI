other
send
	"Private - The Authorizer application sends stdout and stderr data in the same manner as a Responder"

	self sendStderr.
	self sendStdout.
	self sendEndRequestSuccess.