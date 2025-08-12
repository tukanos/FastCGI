other
getEmptyGetValuesPairs
	| pairs |
	(pairs := OrderedCollection new)
		add: (FSNameValuePair name: 'FCGI_MAX_CONNS' value: '');
		add: (FSNameValuePair name: 'FCGI_MAX_REQS' value: '');
		add: (FSNameValuePair name: 'FCGI_MPXS_CONNS' value: '').
	^pairs