other
testMakeActiveEx
	self setConnectionOn: (FSRecordStruct beginRequestId: 1 role: 1 flags: 1) asByteArray.
	self should: [connection makeActive] raise: FSError