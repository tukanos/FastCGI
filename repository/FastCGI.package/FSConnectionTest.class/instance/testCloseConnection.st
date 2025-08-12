other
testCloseConnection
	| server |
	server := FSSocketServer new.
	server addConnection: connection.
	self assert: connection server == server.
	self assert: (server connections includes: connection).
	connection closeConnection.
	self deny: (server connections includes: connection)