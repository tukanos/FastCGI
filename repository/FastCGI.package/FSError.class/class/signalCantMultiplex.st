instance creation
signalCantMultiplex
	^self new
		protocolStatus: FCGI_CANT_MPX_CONN;
		signal: 'Cant Multiplex'