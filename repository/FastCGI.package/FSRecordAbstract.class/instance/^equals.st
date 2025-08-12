other
= aRecord
	"SW: Test helper method. Not efficient, but sufficient"

	^aRecord species == self species and: [
		self asByteArray = aRecord asByteArray]