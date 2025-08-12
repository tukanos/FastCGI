other
readFromStream: aStream
	| record |
	self assert: [(record := aStream nextRecordStruct) isStreamRecord].
	^self forFirstRecord: record streaming: [aStream nextRecordStruct]