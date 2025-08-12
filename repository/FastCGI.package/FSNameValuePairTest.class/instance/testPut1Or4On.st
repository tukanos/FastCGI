other
testPut1Or4On
	self assert1Or4For: 0 is: #(0) asByteArray.
	self assert1Or4For: 1 is: #(1) asByteArray.
	self assert1Or4For: 127 is: #(127) asByteArray.
	self assert1Or4For: 128 is: #(128 0 0 128) asByteArray.
	self assert1Or4For: 129 is: #(128 0 0 129) asByteArray.
	self assert1Or4For: 255 is: #(128 0 0 255) asByteArray.
	self assert1Or4For: 256 is: #(128 0 1 0) asByteArray