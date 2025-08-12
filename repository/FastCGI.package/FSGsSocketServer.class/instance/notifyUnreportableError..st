other
notifyUnreportableError: aString
	"unconditional logging to stdout"

	| stdout stack |
	stack := GsProcess stackReportToLevel: 300.
	stdout := GsFile stdoutServer.
	stdout
		nextPutAll:
			'-----------  Unreportable ERROR Encountered: ' , DateAndTime now printString.
	stdout nextPutAll: aString.
	stdout cr.
	stdout nextPutAll: stack.
	stdout cr.
	stdout nextPutAll: '-----------'.
	stdout cr.
	stdout close