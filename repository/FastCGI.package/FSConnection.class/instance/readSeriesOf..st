other
readSeriesOf: aStreamRecord
	^FSRecordSeries forFirstRecord: aStreamRecord streaming: [self nextAppRecordStruct]