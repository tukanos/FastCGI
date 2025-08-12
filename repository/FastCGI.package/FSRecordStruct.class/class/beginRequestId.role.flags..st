other
beginRequestId: anId role: anInteger1 flags: anInteger2
	"Private - SW: Test Helper method"
	
	self assert: [anInteger1 < 256].
	self assert: [anInteger2 < 256].
	^self type: FCGI_BEGIN_REQUEST requestId: anId data:  (self dataWith: 0 with: anInteger1  with: anInteger2)