other
incrementElapsedTime: aFloat
	"expect aFloat to have microsecond resolution. see System class>>_timeGmtFloat"
	"no longer used"

	elapsedTimeMutex critical: [
		elapsedTime := elapsedTime + aFloat.
		System _sessionCacheStatAt: 2 put: (elapsedTime * 1000) asInteger.
	]