other
setActiveIdFor: recordUnit
	self assert: [activeId isNil].
	activeId := recordUnit requestId.
	self assert: [activeId > 0]