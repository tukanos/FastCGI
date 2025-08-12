other
testNextAppUnitEx
	| r1 r2 ex |
	r1 := self getStdinRecord.
	r2 := FSRecordSeries stdinId: 2 data: 'abc'.
	self setConnectionOn: r1 asByteArray , r2 asByteArray.
	connection setActiveIdFor: r1.
	self assert: connection nextAppRecord = r1.
	[connection nextAppRecord] on: FSError do: [:e | ex := e].
	self assert: ex protocolStatus = 1	"FCGI_CANT_MPX_CONN"