other
addNextRecord: aRecordStruct 
	"Private - SW: Note on the type assert: My reading of the Spec is that at the record layer, it is possible to interleave stream records of different types. However at the role/connection level for a FCGIApplication, this would be an error. If this assert signals, please contact me"

	self assert: [aRecordStruct isStreamRecord].
	self assert: [aRecordStruct type = self type].
	aRecordStruct requestId = self requestId ifFalse: [FSError signalCantMultiplex].
	^records add: aRecordStruct