other
unsafeServe
	"Private 
		-Check with the FSSocketServer that we should accept the connection.
		-Make the connection active, pass the responsibility of dealing with the connection to the role, then close the connection."

	self server assertAcceptConnection: self.
	self makeActive.
	role handleConnection.