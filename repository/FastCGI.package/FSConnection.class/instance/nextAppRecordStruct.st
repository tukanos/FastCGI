other
nextAppRecordStruct
	"Private - Answer the next record struct (either a discrete type RecordStruct or a stream type RecordSeries).
	-If the record is for us (ie a management record for the FastCGI Library), handle it and get the next"

	| recordStruct |
	[(recordStruct := stream nextRecordStruct) isManagement] 
		whileTrue: [self handleManagement: recordStruct].
	self assertActiveRequest: recordStruct.
	^recordStruct