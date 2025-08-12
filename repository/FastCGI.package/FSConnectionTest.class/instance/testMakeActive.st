other
testMakeActive
	self setConnectionOn: self getBeginRecord asByteArray.
	connection makeActive.
	self assert: (connection role isKindOf: FSResponderRole).
	self assert: connection activeId = 1