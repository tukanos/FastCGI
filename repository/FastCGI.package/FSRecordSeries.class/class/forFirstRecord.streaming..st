other
forFirstRecord: aRecordStruct streaming: operation
	| nextRecord series |
	series := self  forFirstRecord: aRecordStruct .
	nextRecord := aRecordStruct .
	[nextRecord isLastInSeries] 
		whileFalse: [series addNextRecord: (nextRecord := operation value)].
	^series