other
answerAuthorizerRole: aFSAuthorizerRole
	"Answer to the aFSResponderRole. Subclasses should re-implement this method. See #answerResponderRole:
	See SPEC 6.3
	1/ Access  the FCGI_PARAMS stream via #params 
	2/ sends stdout and stderr data in the same manner as a Responder
	See http://www.fastcgi.com/devkit/doc/fcgi-spec.html#S6.3
		http://www.fastcgi.com/mod_fastcgi/docs/mod_fastcgi.html (Apache - FastCGI Specification Compliance )"

	FSError signalUnknownRole