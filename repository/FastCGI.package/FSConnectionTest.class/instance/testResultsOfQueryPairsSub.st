other
testResultsOfQueryPairsSub
	| results |
	connection server: FSSocketServer new.
	results := connection resultsOfQueryPairs: (Array with: self getEmptyGetValuesPairs last).
	self assert: results size = 1.
	self assert: results first name = 'FCGI_MPXS_CONNS'.
	self assert: results first value = '0'