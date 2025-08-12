other
putChunk: aString on: stream
	stream
		nextPutAll: (aString size printStringRadix: 16 showRadix: false);
		cr;
		nextPutAll: aString;
		cr