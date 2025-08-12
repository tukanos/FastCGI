other
next2
	"Answer a ByteArray.
	(If streaming on a socket, block if not available, and signal error if socket not valid)"

	| b1 b0 |
	b1 := self next.
	b0 := self next.
	^b1 * 256 + b0