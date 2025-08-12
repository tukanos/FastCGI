other
testReceivePararmsEx
	self setRoleOnRecords: (Array with: self getBeginRecord
				with: self getStdinRecordEmpty).
	self should: [role receive] raise: Error