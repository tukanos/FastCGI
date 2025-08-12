other
dataWith: i1 with: i2  with: i3
	"Private - Helper method"

	^self emptyData
		at: 1 put: i1;
		at: 2 put: i2;
		at: 3 put: i3;
		yourself