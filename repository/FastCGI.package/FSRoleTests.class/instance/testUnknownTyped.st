other
testUnknownTyped
	self 
		should: [self setRoleOnRecords: (self getSampleRecordsWith: (FSRecordSeries type: 20 requestId: 1 data: ''))]
		raise: Error.