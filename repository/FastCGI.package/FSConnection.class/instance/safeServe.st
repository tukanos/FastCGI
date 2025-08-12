other
safeServe
	"Private - See #unsafeServe comment.
	-Handle both protocol and application errors"

	[
		[
			[
				self unsafeServe.
			] on: FSError do: [ :e | 
				self handleFSError: e.
			].
		] on: Error do: [ :e | 
			self handleError: e.
		].
	] ensure: [
		self closeConnection.
	].