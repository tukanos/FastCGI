other
streamToStream: aFSFCGIGsStream 
	"Write all but the last record
	This can be used to send part of a bigger series"

	self assert: [self lastRecord isLastInSeries].
	records from: 1 to: records size -1 do: [ :each | each writeToStream: aFSFCGIGsStream ]