other
sendStderr
	"Private - SPEC 6.1 If an application has no errors to report, it sends either no FCGI_STDERR records or one zero-length FCGI_STDERR record"

	(stderror isNil or: [stderror isEmpty]) ifTrue: [^nil].
	self connection writeRecord: (FSRecordSeries 
		stderrId: self activeId 
		data: (stderror isNil ifTrue: [String new] ifFalse: [stderror ]))