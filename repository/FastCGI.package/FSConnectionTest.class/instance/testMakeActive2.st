other
testMakeActive2
	self setConnectionOn: ( FSRecordStruct beginRequestId: 2 role: 2 flags: 0) asByteArray.
	connection makeActive.
	self assert: (connection role isKindOf: FSAuthorizerRole).
	self assert: connection activeId = 2.