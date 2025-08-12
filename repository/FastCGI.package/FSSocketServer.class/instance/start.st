other
start

	socket := self newServerSocket.
	self serveLoop: ([:sock |
		[
			true.
		] whileTrue: [
			self listen: sock.
		].
	] 
		forkAt: self serverProcessPriority
		with: { socket }).