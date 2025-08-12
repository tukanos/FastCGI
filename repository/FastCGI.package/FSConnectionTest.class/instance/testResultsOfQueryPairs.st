other
testResultsOfQueryPairs
	| results |
	connection server: FSSocketServer new.
	results := connection resultsOfQueryPairs: self getEmptyGetValuesPairs.
	self assert: results size = 3.
	results do: 
			[:each | 
			self assert: (each name isKindOf: String).
			self assert: (each value isKindOf: String)]