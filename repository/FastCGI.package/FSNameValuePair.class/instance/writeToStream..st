other
writeToStream: aStream
	aStream 
		nextPutAll: (self class oneOrFourBytesFor: name size);
		nextPutAll: (self class oneOrFourBytesFor: value size);
		nextPutAll: name asByteArray;
		nextPutAll: value asByteArray