other
handleUnknownType: aTypeNum
	"Private - SPEC 4.2 ... When an application receives a management record whose type T it does not understand, the application responds with {FCGI_UNKNOWN_TYPE, 0, {T}}. "

	self writeRecord: (FSRecordStruct unknownType: aTypeNum)