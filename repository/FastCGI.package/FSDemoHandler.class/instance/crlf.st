other
crlf
	"Private - Answer a crlf string"

	^(String new: 2)
		at: 1 put: Character cr;
		at: 2 put: Character lf;
		yourself.