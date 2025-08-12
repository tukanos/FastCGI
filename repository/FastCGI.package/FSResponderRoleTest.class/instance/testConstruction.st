other
testConstruction
	self setRoleOn: self getBeginRecord asByteArray.
	self assert: (role isKindOf: FSResponderRole).
	self assert: role connection role == role.
	self assert: role roleName = 'Responder'