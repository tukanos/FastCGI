other
log: aString

	| fileStream |
	path isNil ifTrue: [^self].
	GsFile gciLogServer: aString. 
true ifTrue: [^self ].
	fileStream := GsFile openAppendOnServer: path.
	fileStream isNil ifTrue: [^self].
	fileStream 
		cr; 
		nextPutAll: Time now printString; 
		space; 
		nextPutAll: aString;
		close;
		yourself.