other
addRecord: aRecordStruct
	^records isEmpty 
		ifTrue: [self addFirstRecord: aRecordStruct]
		ifFalse: [self addNextRecord: aRecordStruct]