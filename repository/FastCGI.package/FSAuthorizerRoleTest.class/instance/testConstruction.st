other
testConstruction
	self setRoleOn: self getBeginRecord asByteArray.
	self assert: role connection role == role.
	self assert: role roleName = 'Authorizer'