other
testUnknownMananagment
	| r1 r2 bytes |
	r1 := FSRecordStruct type: 18 requestId: 0 data: ''.
	r2 := self getStdinRecord.
	bytes := r1 asByteArray , r2 asByteArray.
	self setConnectionOn: bytes.
	self assert: connection nextAppRecord = r2.
	self assert: self writeStream contents 
				= (FSRecordStruct unknownType: 18) asByteArray