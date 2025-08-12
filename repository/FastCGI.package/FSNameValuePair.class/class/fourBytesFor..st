other
fourBytesFor: aNum
	"SW:Utility method to aide porting
	Any suggestions welcomed!"

	| byteArray |
	byteArray := ByteArray new: 4.
	1 to: 4 do: [ :i | byteArray at: i put: (self byteAt: 5 - i of: aNum)].
	^byteArray