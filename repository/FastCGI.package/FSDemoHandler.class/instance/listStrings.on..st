other
listStrings: aCollOfStrings on: aStream
	aCollOfStrings do: 
			[:each | 
			aStream
				nextPutAll: '<li>';
				nextPutAll: each;
				nextPutAll: '</li>']