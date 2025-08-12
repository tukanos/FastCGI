other
getValuesResultPairs: aCollOfPairs
	"SPEC 4.1"
 
	^self type: FCGI_GET_VALUES_RESULT requestId: 0 pairs: aCollOfPairs