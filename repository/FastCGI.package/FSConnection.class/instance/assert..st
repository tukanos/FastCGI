other
assert: aBlock

	aBlock value ifFalse: [self error: 'Assertion failed'].