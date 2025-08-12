other
assert1Or4For: length is: bytes2 
	| bytes1 |
	bytes1 := FSNameValuePair oneOrFourBytesFor: length.
	self assert: bytes1 = bytes2.
	self assert: (FSNameValuePair next1Or4From: bytes2 readStream) = length