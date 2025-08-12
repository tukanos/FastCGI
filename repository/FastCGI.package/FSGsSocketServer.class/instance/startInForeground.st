other
startInForeground

	socket := self newServerSocket.
	self serveLoop: Processor activeProcess.
	[
		[
			true.
		] whileTrue: [
			self listen: socket.
			self gateSemaphore wait.
		].
	] ensure: [
		self stop.
	].