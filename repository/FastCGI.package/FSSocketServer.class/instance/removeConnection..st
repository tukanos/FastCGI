other
removeConnection: aConnection
	"Remove the connection.
	-This method must not signal an error.
	-connections is shared across multiple processes"

	connections remove: aConnection ifAbsent: []