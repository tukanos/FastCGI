other
assertValid
	"Private - SPEC 3.3 (is) .. a series of zero or more non-empty records ... followed by an empty record"

	self assert: [records notEmpty].
	self assert: [self lastRecord isLastInSeries]