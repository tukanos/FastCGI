other
assertName: aNameString value: aValueString is: aByteArray
	| stream |
	pair := FSNameValuePair readFromStream: aByteArray readStream.
	self assert: pair name = aNameString.
	self assert: pair value = aValueString.
	stream := WriteStream on: ByteArray new.
	pair writeToStream: stream.
	self assert: stream contents = aByteArray