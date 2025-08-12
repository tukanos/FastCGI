other
assertActiveRequest: aFSRecord
	"Private - If we have an activeId, assert the recordUnit is the same requestId. 
	-Note: Spec says to ignore if not a beginRequest. If this assert signals it is within the Spec to loosen it
	--(I have put a stricter assert in place because I think it would be unusual)"

	(activeId notNil and: [activeId ~= aFSRecord requestId]) 
		ifTrue: [FSError signalCantMultiplex]