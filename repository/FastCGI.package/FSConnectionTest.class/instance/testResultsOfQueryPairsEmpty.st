other
testResultsOfQueryPairsEmpty
	| results |
	connection server: FSSocketServer new.
	results := connection resultsOfQueryPairs: #().
	self assert: results isEmpty