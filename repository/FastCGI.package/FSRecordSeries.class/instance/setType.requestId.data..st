other
setType: aTypeNum requestId: anId data: aByteArray 

	| stream |
	aByteArray size < 65535
		ifTrue: [
			self addRecord: (FSRecordStruct 
				type: aTypeNum
				requestId: anId
				data: aByteArray).
		]
		ifFalse: [ | pos limit |
			pos := 1.
			limit := aByteArray size.
			[ pos <= limit ] whileTrue: [
				| count |
				count := limit - pos + 1 min: 65535.
				self addRecord: (FSRecordStruct 
					type: aTypeNum
					requestId: anId
					data: (aByteArray copyFrom: pos to: pos + count - 1)).
				pos := pos + count
			].
		].
	self addRecord: (FSRecordStruct 
		type: aTypeNum
		requestId: anId
		data: '')