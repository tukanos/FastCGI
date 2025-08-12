other
stderr: aStringOrByteArray
	"Set string to be returned to the WS by FCGI_STDERR.
	SPEC 6.1 All role protocols use the FCGI_STDERR stream just the way stderr is used in conventional applications programming: to report application-level errors in an intelligible way. Use of the FCGI_STDERR stream is always optional
	SW: There is no (smalltalk) stream access, because this is not streamed back to the server, but sent once #answer returns"


	stderror := aStringOrByteArray