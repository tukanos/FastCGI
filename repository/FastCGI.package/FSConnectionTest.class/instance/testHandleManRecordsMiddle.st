other
testHandleManRecordsMiddle
	| records pairs |
	pairs := self getEmptyGetValuesPairs.
	(records := OrderedCollection new)
		add: self getBeginRecord;
		add: (FSRecordStruct getValuesPairs: pairs);
		add: self getStdinRecord.
	self setConnectionOn: (self getByteArrayOf: records).
	connection server: FSSocketServer new.
	connection makeActive.
	self assert: connection nextAppRecord = self getStdinRecord.
	self assert: (connection role isKindOf: FSResponderRole).
	self assert: self writeStream contents 
				= (FSRecordStruct getValuesResultPairs: self getDefaultGetValuesPairs) asByteArray