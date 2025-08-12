other
role
	self assert: [self isBeginRequest].
	^((self data at: 1) * 256) + (self data at: 2)