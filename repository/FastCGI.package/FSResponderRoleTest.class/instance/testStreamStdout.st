other
testStreamStdout
	self setDefaultEmptyRole.
	role nextPutAll: 'abc'.
	self assertBytesWritten: #(1 6 0 1 0 3 0 0 97 98 99) asByteArray.
	role nextPutAll: 'def'.
	self assertBytesWritten: #(1 6 0 1 0 3 0 0 97 98 99) asByteArray , #(1 6 0 1 0 3 0 0 100 101 102) asByteArray.
	role nextPutAll: ''.
	self assertBytesWritten: #(1 6 0 1 0 3 0 0 97 98 99) asByteArray , #(1 6 0 1 0 3 0 0 100 101 102) asByteArray.