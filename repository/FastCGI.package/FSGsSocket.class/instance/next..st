other
next: aCount 
	"Answer a ByteArray.
	(If streaming on a socket, block if not available, and signal error if socket not valid)"

	| bytes result buffer bufSize pos remaining |
	aCount = 0 ifTrue: [^ByteArray new].
	bytes := ByteArray new: aCount.
	bufSize := 2000.
	aCount <= bufSize
		ifTrue:[
			result := socket
				read: aCount
				into: bytes.
			result == nil ifTrue: [ self error: socket lastErrorString ].
			result == aCount ifTrue: [ ^bytes ].
			buffer := ByteArray new: bufSize.
			pos := result + 1.
			remaining := aCount - result.
		]
		ifFalse: [
			buffer := ByteArray new: bufSize.
			pos := 1.
			remaining := aCount.
		].
	[ remaining > 0 ] whileTrue: [
		result := socket
			read: (bufSize min: remaining)
			into: buffer.
		result == nil ifTrue: [ self error: socket lastErrorString ].
		buffer copyFrom: 1 to: result into: bytes startingAt: pos. 
		pos := pos + result.
		remaining := remaining - result.
	].
	^bytes