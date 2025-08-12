other
byteAt: index of: anInteger
	"SW:Utility method to aide porting
	Any suggestions welcomed!"

	"Gss byteAt: is Equivalent to:
		^(self abs bitShift: 1 - index * 8) bitAnd: 16rFF"

	^(anInteger abs bitShift: 1 - index * 8) bitAnd: 16rFF