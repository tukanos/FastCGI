other
testConnection
	| connection |
	connection := server connectionClass new.
	server addConnection: connection.
	self assert: (server connections includes: connection).
	server removeConnection: connection.
	self deny: (server connections includes: connection).
	server removeConnection: connection.
	server removeConnection: connection.