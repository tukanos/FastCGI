other
onRequestHandler: aFSResquestHandler
	"Answer an instance that will have requests handled by the aFSResquestHandler"

	^self new requestHandler: aFSResquestHandler