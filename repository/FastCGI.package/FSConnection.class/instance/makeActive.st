other
makeActive
	"Private - SPEC 3.3 A request ID R becomes active when the application receives a record {FCGI_BEGIN_REQUEST, R, ...} and becomes inactive when the application sends a record {FCGI_END_REQUEST, R, ...} to the Web server. 
While a request ID R is inactive, the application ignores records with requestId == R, except for FCGI_BEGIN_REQUEST records as just described. "

	| recordUnit |
	[(recordUnit := self nextAppRecord) isBeginRequest] whileFalse: [].
	self setActiveIdFor: recordUnit.
	self setConnectionRoleFor: recordUnit.
	recordUnit wantsKeepConnection ifTrue: [FSError signalCantMultiplex]