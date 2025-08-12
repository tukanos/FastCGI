other
answerResponderRole: aFSResponderRole 
	"Answer to the aFSResponderRole. Subclasses should re-implement this method. 
	1/ Applications can (via the aFSResponderRole argument)
		-access #stdin <ByteArray> and #params <Dictionary>
		-set #stderr: <String or ByteArray>s. 
		Either: -set #stdout: <String or ByteArray>s
		Or -stream to stdout using #nextPut:/#nextPutAll:/#nextPutBytes:/ etc.
	2/ The receiver is shared from multiple processes. The role object is created within this process.
	3/ Exceptions are handled and sent back to the WebServer via stderr
	4/ When this method returns, stdout and stderr will be sent back to the WebServer.

	See http://www.fastcgi.com/devkit/doc/fcgi-devel-kit.htm and http://cgi-spec.golux.com/"

	FSError signalUnknownRole