other
handleError: anException
	"Private - handle the application error by writing the anException description to stderr.
	We are outside #serve's error handling, if we get an error (reporting the error!) notify the FSServer"

	[
		| messageText data record |
		"Handle different argument arrangements (probably introduced in 2.3.2)"
		messageText := anException messageText.
		data := messageText isNil
			ifTrue: [anException description]
			ifFalse: [messageText].

		(UserGlobals at: #FSErrorLog ifAbsentPut: [WriteStream on: String new]) cr;
			nextPutAll: anException description; cr;
			nextPutAll: data; cr;
			nextPutAll: (GsProcess stackReportToLevel: 50); cr;
			yourself.
		record := FSRecordSeries 
			stderrId: self activeIdOrManagement
			data: data.
		self writeRecord: record.
	] on: Error do: [:e | 
		self notifyUnreportableError: anException description.
	].