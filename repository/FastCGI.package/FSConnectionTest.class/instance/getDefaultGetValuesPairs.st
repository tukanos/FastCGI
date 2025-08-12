other
getDefaultGetValuesPairs
	| pairs |
	(pairs := OrderedCollection new)
		add: (FSNameValuePair name: 'FCGI_MAX_CONNS' value: '50');
		add: (FSNameValuePair name: 'FCGI_MAX_REQS' value: '50');
		add: (FSNameValuePair name: 'FCGI_MPXS_CONNS' value: '0').
	^pairs