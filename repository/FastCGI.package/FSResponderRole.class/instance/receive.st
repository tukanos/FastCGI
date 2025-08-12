other
receive
	"Private - 
	1/ The Responder application receives CGI/1.1 environment variables over FCGI_PARAMS
	2/ Next the Responder application receives CGI/1.1 stdin data "

	self readParams.
	self readStdin.
	self assertStdinLength.