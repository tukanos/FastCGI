instance creation
signalOverloaded
	^self new
		protocolStatus: FCGI_OVERLOADED;
		signal: 'Overloaded'