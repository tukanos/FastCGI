other
testEmpty
	self should: [FSNameValuePair readFromStream: (ByteArray withAll: #()) readStream] raise: Error