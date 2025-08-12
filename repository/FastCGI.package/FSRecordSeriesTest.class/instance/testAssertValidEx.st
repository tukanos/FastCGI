other
testAssertValidEx
	self setZeroNonEmpty.
	recordSeries records removeAll: recordSeries records copy.
	self should: [recordSeries assertValid] raise: Error