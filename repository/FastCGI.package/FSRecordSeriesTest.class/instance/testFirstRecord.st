other
testFirstRecord
	self setZeroNonEmpty.
	self assert: recordSeries firstRecord == recordSeries records first.