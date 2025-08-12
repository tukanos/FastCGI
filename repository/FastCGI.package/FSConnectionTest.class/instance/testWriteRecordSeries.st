other
testWriteRecordSeries
	| record |
	record := self getStdoutRecord.
	connection writeRecord: record.
	self assert: self writeStream contents = record asByteArray