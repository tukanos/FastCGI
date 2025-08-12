other
asParams
	"Answer a dictionary of converted FCGI name value pairs"

	| params |
	params := Dictionary new.
	self asPairs do: [ :each | params at: each name put: each value].
	^params