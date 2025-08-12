other
putPackageNamesOn: stream 

"
	| pmClass |
	SessionManager current isRuntime ifTrue: [
		^stream display: '<li>Not available in a RuntimeSessionManager</li>']. 
	pmClass := self class environment at: #PackageManager.
	self listStrings: pmClass current packageNames asSortedCollection on: stream.
"