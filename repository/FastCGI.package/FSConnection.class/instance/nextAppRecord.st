other
nextAppRecord
	"Answer the next record unit (either a discrete type RecordStruct or a stream type RecordSeries.
	-The data in this record is intended for the application.
	-Management records that may be mixed into the stream have been handled by the receiver"

	| rec |
	^(rec := self nextAppRecordStruct) isStreamRecord 
		ifTrue: [self readSeriesOf: rec]
		ifFalse: [rec]