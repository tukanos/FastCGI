instance creation
signalUnknownRole
	^self new
		protocolStatus: FCGI_UNKNOWN_ROLE ;
		signal: 'Unknown Role'