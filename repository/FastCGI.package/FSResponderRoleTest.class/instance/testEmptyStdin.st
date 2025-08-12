other
testEmptyStdin
	self setRoleOnRecords: (self getSampleRecordsWith: self getStdinRecordEmpty).
	self assert: (role isKindOf: FSResponderRole).
	self assert: role connection role == role.
	role connection server requestHandler: FSDemoHandler new.
	role receive.
	self assert: role stdin isEmpty.
	self assert: (role params at: 'a') = 'b'.
	role answer.
	role send