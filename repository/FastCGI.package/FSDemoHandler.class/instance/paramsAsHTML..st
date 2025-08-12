other
paramsAsHTML: aDictionary
	| stream |
	stream := WriteStream on: String new.
	stream nextPutAll: '<table>'.
	aDictionary keys asSortedCollection do: [:k | 
		| v |
		v := aDictionary at: k.
		stream
			nextPutAll: '<tr><td>';
			nextPutAll: k;
			nextPutAll: '</td><td>';
			nextPutAll: v;
			nextPutAll: '</td></tr>';
			cr.
	].
	stream nextPutAll: '</table>'.
	^stream contents