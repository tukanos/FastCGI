other
newServerSocket
	"Private - Answer a new Socket to listen on"

	| server errStr |
	server := GsSocket new
		option: 'REUSEADDR' put: true;
		yourself.
	
	(server makeServerAtPort: self port) isNil ifTrue: [
		errStr := server lastErrorString.
		server close.
		self error: errStr.
	].
	server port = self port ifFalse: [ 
		self error: 'bad port number'.
	].
	^server.