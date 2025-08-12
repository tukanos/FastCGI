other
writeToStream: aFSFCGIGsStream 
	self assert: [self lastRecord isLastInSeries].
	records do: [ :each | each writeToStream: aFSFCGIGsStream]