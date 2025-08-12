other
peek

	| next |
	(next := self peekByte) isNil ifTrue: [^nil].
	^next asCharacter.