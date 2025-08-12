other
testSetConnectionRole
	connection setConnectionRoleFor: self getBeginRecord.
	self assert: (connection role isKindOf: FSResponderRole).
	self assert: connection role connection == connection