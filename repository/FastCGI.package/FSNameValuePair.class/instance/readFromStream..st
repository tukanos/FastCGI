other
readFromStream: aStream
	| nameLength valueLength |
	nameLength := self class next1Or4From: aStream.
	valueLength := self class next1Or4From: aStream.
	name := (aStream next: nameLength) asString.
	value := (aStream next: valueLength) asString.