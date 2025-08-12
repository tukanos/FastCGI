other
querySelectorOrNil: aFSResponderRole
	| querySymbol |
	querySymbol := ((aFSResponderRole params at: 'QUERY_STRING' ifAbsent: [^nil]) , ':') 
				asSymbol.
	^(self querySelectors includes: querySymbol) ifTrue: [querySymbol] ifFalse: []