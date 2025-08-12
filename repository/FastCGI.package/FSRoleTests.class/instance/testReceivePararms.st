other
testReceivePararms
	self setRoleOnRecords: (self getSampleRecordsWith: self getStdinRecordEmpty).
	role readParams.
	self assert: (role params size = 3).
	self assert: (role params at: 'a') = 'b'.
	self assert: (role params at: 'c') = 'd'.
	self assert: (role params at: 'CONTENT_LENGTH') = '0'.