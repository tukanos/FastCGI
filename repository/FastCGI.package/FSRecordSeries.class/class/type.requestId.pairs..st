other
type: aTypeNum requestId: anId pairs: aCollOfPairs
	"Private - SW: do the common practice and code each pair as a record.
	Duplication with instance>>#setType:requestId:data:"

	| instance |
	instance := self new.
	aCollOfPairs do: [ :each |
		instance addRecord: (FSRecordStruct 
			type: aTypeNum
			requestId: anId
			data: each asByteArray)].
	instance addRecord: (FSRecordStruct 
				type: aTypeNum
				requestId: anId
				data: '').
	^instance