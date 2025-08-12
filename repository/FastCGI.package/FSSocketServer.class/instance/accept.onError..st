other
accept: aServerSocket onError: operation
	"Private - Answer an instance of connectionClass (FSConnection)
	Block in this method on accept()"

	^self subclassResponsibility