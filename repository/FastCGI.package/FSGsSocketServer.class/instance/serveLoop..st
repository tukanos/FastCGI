accessing
serveLoop: aProcess

	aProcess == nil 
		ifTrue: [ serveLoop := nil ]
		ifFalse: [ serveLoop := TransientValue value: aProcess ]