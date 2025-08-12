other
asPairs
	| stream pairs |
	stream := self data readStream.
	pairs := OrderedCollection new.
	[stream atEnd] whileFalse: [ 
		pairs add: (FSNameValuePair readFromStream: stream)].
	^pairs