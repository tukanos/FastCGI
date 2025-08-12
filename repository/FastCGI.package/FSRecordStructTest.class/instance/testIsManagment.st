other
testIsManagment
	self assert: (FSRecordStruct type: 1 requestId: 0 data: '') isManagement.
	self deny: self getBeginRecord isManagement.
	self assert: (FSRecordStruct type: 4 requestId: 0 data: '') isManagement.
	self deny: (FSRecordStruct type: 4 requestId: 1 data: '') isManagement.