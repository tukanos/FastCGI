other
next1Or4From: aStream
	| ch |
	ch := aStream next.
	ch > 127 ifTrue: [ch := ch - 128 * 16777216 + (aStream next * 65536) + (aStream next * 256) + aStream next].
	^ch