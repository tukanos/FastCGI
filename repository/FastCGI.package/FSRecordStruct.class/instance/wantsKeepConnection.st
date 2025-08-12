other
wantsKeepConnection
	"SPEC 5.1 flags & FCGI_KEEP_CONN: If zero, the application closes the connection after responding to this request. If not zero, the application does not close the connection after responding to this request; the Web server retains responsibility for the connection."

	^(self flags bitAnd: FCGI_KEEP_CONN) ~= 0