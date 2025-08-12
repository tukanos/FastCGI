other
roleClassFor: aRoleNum
	| dict |
	(dict := IdentityDictionary new)
		at: FCGI_RESPONDER put: FSResponderRole;
		at: FCGI_AUTHORIZER put: FSAuthorizerRole.
	^dict at: aRoleNum ifAbsent: [FSError signalUnknownRole]