other
nextRecordStruct
	"Answer the next recordStruct.
	-At this point we do not know whether it is a discrete record, or part of a series
	(If streaming on a socket, block if not available, and signal error if socket not valid)"

	^FSRecordStruct readFromStream: self