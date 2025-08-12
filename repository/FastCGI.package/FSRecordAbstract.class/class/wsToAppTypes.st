other
wsToAppTypes 
	"Private - SPEC: http://www.fastcgi.com/devkit/doc/fcgi-spec.html#SA
	Record types that can be sent to us"
	
	"^#(FCGI_GET_VALUES  FCGI_BEGIN_REQUEST  FCGI_ABORT_REQUEST  FCGI_PARAMS  FCGI_STDIN  FCGI_DATA)"
	^#(9 1 2 4 5 8)