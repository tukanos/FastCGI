other
assertCommon
	self assert: (record isKindOf: FSRecordStruct).
	self assert: record requestId = 1