other
testUnknownMananagment2
	| r1 r2 bytes unkBytes |
	r1 := FSRecordStruct unknownType: 20.
	r2 := self getStdinRecord.
	bytes := r1 asByteArray , r1 asByteArray , r2 asByteArray.
	unkBytes := (FSRecordStruct unknownType: 11) asByteArray.
	self setConnectionOn: bytes.
	self assert: connection nextAppRecord = r2.
	self assert: self writeStream contents = (unkBytes , unkBytes)