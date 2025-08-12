other
handleByUri: aFSResponderRole

	| uri |
	uri := aFSResponderRole params at: 'REQUEST_URI'.
	(uri matchPattern: #($* '/gemstone.gif')) ifTrue: [
		^self gemStoneGif: aFSResponderRole.
	].
	^self defaultFor: aFSResponderRole