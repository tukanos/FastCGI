other
test44Hack
	pair := FSNameValuePair readFromStream: (ByteArray withAll: #(128 0 0 1 128 0 0 1 97 98)) readStream.
	self assert: pair name = 'a'.
	self assert: pair value = 'b'.