other
socket: aSocket 
	"Public - Helper method. 
	-Set the stream constructed from the Socket. The stream is responsible for closing the socket when sent #close
	-The receiver will handle all errors"
 
	self stream: (self streamFrom: aSocket).