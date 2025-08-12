other
sendStdout
	"Private - SPEC 6.1 When a role protocol calls for transmitting a stream other than FCGI_STDERR, at least one record of the stream type is always transmitted, even if the stream is empty. "

	self connection writeRecord: (FSRecordSeries 
		stdoutId: self activeId data: (stdout isNil ifTrue: [String new] ifFalse: [stdout]))