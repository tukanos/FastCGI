other
testHandleManRecords
	| records pairs |
	pairs := self getEmptyGetValuesPairs.
	(records := OrderedCollection new)
		add: (FSRecordStruct getValuesPairs: pairs);
		add: self getBeginRecord.
	self setConnectionOn: (self getByteArrayOf: records).
	connection server: FSSocketServer new.
	connection makeActive.
	self assert: (connection role isKindOf: FSResponderRole).
	self assert: self writeStream contents 
				= (FSRecordStruct getValuesResultPairs: self getDefaultGetValuesPairs) asByteArray