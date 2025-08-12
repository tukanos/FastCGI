other
close
	writeStream notNil ifTrue: [writeStream close].
	readStream notNil ifTrue: [readStream close].
	writeStream := readStream := nil