other
testRoleClassForEx
	| ex |
	[connection roleClassFor: 20] on: FSError do: [ :e | ex := e].
	self assert: ex protocolStatus = 3. "FCGI_UNKNOWN_ROLE"