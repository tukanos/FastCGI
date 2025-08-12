other
answerResponderRole: aFSResponderRole 
	"Note: This class attempts to do many things in order to test a FS setup
	-See superclass comment.
	-If the request contains a query we recognize, return one of the special case 'testing' responses, otherwise return the default response."

	| selector |
	selector := self querySelectorOrNil: aFSResponderRole.
	selector isNil ifTrue: [
		self handleByUri: aFSResponderRole.
	] ifFalse: [
		self perform: selector with: aFSResponderRole.
	].