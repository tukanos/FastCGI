other
closeConnection
	"Private - Close the connection
	We are outside #serve's error handling ... this must not signal any errors"

	[stream close] on: Error do: [:e |].
	stream := nil.
	self server removeConnection: self