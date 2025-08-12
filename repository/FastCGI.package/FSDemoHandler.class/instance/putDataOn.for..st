other
putDataOn: stream for: aFSResponderRole 
	stream
		nextPutAll: '<h3>Params:</h3>';
		nextPutAll: (self paramsAsHTML: aFSResponderRole params);
		nextPutAll: '<h3>Stdin:</h3>';
		nextPutAll: aFSResponderRole stdin printString