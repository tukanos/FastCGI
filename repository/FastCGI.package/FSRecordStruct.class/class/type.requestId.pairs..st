other
type: aTypeNum requestId: anId pairs: aCollOfPairs
	"Private - Answer a discrete record that contains pairs (FCGI_GET_VALUES and FCGI_GET_VALUES_RESULT)
	SPEC4.1  "

	| stream |
	stream := WriteStream on: ByteArray new.
	aCollOfPairs do: [ :each | each writeToStream: stream].
	^self 
		type: aTypeNum 
		requestId: anId
		data: stream contents