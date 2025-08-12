other
startUp
	"
	self startUp
	"

	^(FSGsSocketServer onRequestHandler: self new)
		port: 1990;
		startInForeground;
		yourself.