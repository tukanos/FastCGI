other
testWriteRecord
	| record |
	record := self getEndRequestRecord.
	connection writeRecord: record.
	self assert: self writeStream contents = record asByteArray