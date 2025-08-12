other
setType: aSmallInteger requestId: aSmallInteger2 data: aByteObject
	type := aSmallInteger.
	requestId := aSmallInteger2.
	data := aByteObject asByteArray.
	contentLength := data size.
	paddingLength := 0