other
next: size putAll: aSequenceableCollection startingAt: start
	^writeStream 
		next: size
		putAll: aSequenceableCollection
		startingAt: start