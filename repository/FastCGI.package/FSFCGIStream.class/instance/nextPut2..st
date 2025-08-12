other
nextPut2: aWord
	"(If streaming on a socket signal error if socket not valid)"

	^self 
		nextPut: aWord // 256; 
		nextPut: aWord \\ 256