accessing
gateSemaphore

	gateSemaphore == nil 
		ifTrue: [
			gateSemaphore := TransientSemaphore new.
			10 timesRepeat: [ gateSemaphore signal ] ].
	^gateSemaphore