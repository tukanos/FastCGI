other
setDefaultEmptyRole
	self setRoleOn: (FSRecordStruct beginRequestId: 1 role: self roleNum flags: 0) asByteArray.
	self assertRoleClass