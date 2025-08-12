other
testRoleClassFor
	self assert: (connection roleClassFor: 1) = FSResponderRole.
	self assert: (connection roleClassFor: 2) = FSAuthorizerRole.
	self should: [connection roleClassFor: 20] raise: Error .