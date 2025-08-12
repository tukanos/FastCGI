other
assertConstructionCommon
	self assert: recordSeries records notEmpty.
	self assert: recordSeries requestId = 1.
	self assert: recordSeries lastRecord isLastInSeries.
	recordSeries records do: 
			[:each | 
			self assert: each requestId = 1.
			self assert: (each isKindOf: FSRecordStruct)]