other
contentLengthHeader
	^ ((params at: 'CONTENT_LENGTH' ifAbsent: [ '0' ]) ifEmpty: [ '0' ]) asNumber