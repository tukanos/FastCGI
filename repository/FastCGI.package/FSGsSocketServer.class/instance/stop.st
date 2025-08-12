other
stop
	
	socket notNil ifTrue: [
		socket close.
		socket := nil].
	self serveLoop notNil ifTrue: [ | proc |
		proc := self serveLoop.
		self serveLoop: nil.
		proc terminate ].
	"GLASS does not keep track of the connections"
	"connections notNil ifTrue: [ connections copy do: [:each | each closeConnection]]."