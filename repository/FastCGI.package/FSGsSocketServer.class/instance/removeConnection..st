other
removeConnection: aConnection
	"Remove the connection.
	-This method must not signal an error.
	-connections is shared across multiple processes"

	"GLASS does not keep track of the connections"
	"connections remove: aConnection ifAbsent: []"

	self gateSemaphore signal