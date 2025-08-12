other
setConnectionRoleFor: aFSRecordStruct
	role := (self roleClassFor: aFSRecordStruct role) onConnection: self