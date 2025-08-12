other
testReceiveStdinEx
	self setRoleOnRecords: (self getSampleRecordsWith: (FSRecordStruct type: 20 requestId: 1 data: '')).
	self should: [role receive] raise: Error