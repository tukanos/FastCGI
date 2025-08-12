other
streamFrom: aSocket 
	"Private - Helper method. Answer a FSGsSocket for the socket.
	This Stream needs to 
	-Respond to -#nextRecordStruct, #close, #flush.
	-A FSRecord must be able to write itself to the stream.
	-When sent close, it is responsible for closing any socket(s) it is using"

	^FSGsSocket on: aSocket