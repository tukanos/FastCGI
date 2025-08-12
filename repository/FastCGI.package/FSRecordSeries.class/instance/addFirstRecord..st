other
addFirstRecord: aRecordStruct
	self assert: [aRecordStruct isStreamRecord].
	self assert: [records isEmpty].
	^records add: aRecordStruct