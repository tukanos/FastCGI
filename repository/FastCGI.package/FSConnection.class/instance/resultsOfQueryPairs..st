other
resultsOfQueryPairs: aCollOfPairs
	"SPEC4.1 ... only three are defined ...Spec was written in 96, if it ever gets updated, deal with it then"

	| dict |
	dict := Dictionary new.
	dict 
		at: 'FCGI_MAX_CONNS' put: [self server maximumConnections printString];
		at: 'FCGI_MAX_REQS' put: [self server maximumRequests printString];	
		at: 'FCGI_MPXS_CONNS' put: ['0'].
	 aCollOfPairs do: [ :each | 
		(dict includesKey: each name) ifTrue: [
			each value: (dict at: each name) value]].
	^aCollOfPairs select: [ :each | each value notEmpty]