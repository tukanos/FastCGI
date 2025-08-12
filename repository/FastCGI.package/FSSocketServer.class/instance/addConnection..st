other
addConnection: aConnection
	"Private - Add the connection. (keeping the reference is only necessary to force a connection close on the receiver being sent #stop.)
	-connections is shared across multiple processes"

	"Transcript
		nextPutAll: 'addConnection ' , connections size displayString;
		cr."

	connections add: aConnection.
	aConnection server: self.
	^aConnection