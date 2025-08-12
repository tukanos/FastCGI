other
listen: aServerSocket
	"Private - Block in the #accept:onError: method. On an connect, add the FSConnection to the connections collection and fork a processes to serve it.
	-If an error is signaled in accept, we will keep trying. (Note the non-local return)"

	| connection |
	connection := self 
		accept: aServerSocket
		onError: [:ex | 
			self notifyUnreportableError: 'Error accepting connection'.
			^self.
		].
	[:conn |

		self addConnection: conn.
		conn serve.
	] 
		forkAt: self connectionProcessPriority
		with: { connection }.