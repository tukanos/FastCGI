other
testReceiveStdinLengthEx
	self 
		setRoleOnRecords: (self getSampleRecordsWith: self getStdinRecord).
	role readParams.
	role readStdin.
	self should: [role assertStdinLength] raise: Error.
	self 
		setRoleOnRecords: (self getSampleRecordsWith: self getStdinRecord).
	role readParams.
	role params at: 'CONTENT_LENGTH' put: '3'.
	role readStdin.
	role assertStdinLength.
	self assert: role stdin = 'abc' asByteArray