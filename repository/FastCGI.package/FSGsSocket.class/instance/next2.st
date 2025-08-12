other
next2
	"Answer a two-byte unsigned integer.
	(If streaming on a socket, block if not available, and signal error if socket not valid)"

	| ba b1 b0 |
	ba := self next: 2.
	b1 := ba at: 1.
	b0 := ba at: 2.
	^b1 * 256 + b0