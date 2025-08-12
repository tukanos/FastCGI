other
oneOrFourBytesFor: length
	^length  <= 127
		ifTrue: [ByteArray with: length]
		ifFalse: [| byteArray |
			byteArray := self fourBytesFor: length.
			byteArray at: 1 put: (byteArray first bitOr: 16r80).
			byteArray]