other
stop
	
	socket notNil ifTrue: [
		socket close.
		socket := nil].
	self serveLoop notNil ifTrue: [
		self serveLoop terminate. 
		self serveLoop: nil ].
	connections notNil ifTrue: [ connections copy do: [:each | each closeConnection]].