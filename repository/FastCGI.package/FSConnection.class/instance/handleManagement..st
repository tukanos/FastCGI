other
handleManagement: aRecordUnit
	"Private - SPEC 3.3 ... A management record contains information that is not specific to any Web server request, such as information about the protocol capabilities of the application .... An application may receive a FCGI_GET_VALUES record at any time. The application's response should not involve the application proper but only the FastCGI library"

	| answerPairs |
	aRecordUnit type = FCGI_GET_VALUES ifFalse: [^self handleUnknownType: aRecordUnit type].
	answerPairs := self resultsOfQueryPairs: aRecordUnit asPairs.
	self writeRecord: (FSRecordStruct getValuesResultPairs: answerPairs)