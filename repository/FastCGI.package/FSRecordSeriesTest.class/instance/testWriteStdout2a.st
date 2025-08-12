other
testWriteStdout2a
	| string |
	string := (String new: 65535) atAllPut: $a; yourself.
	recordSeries := recordSeries := FSRecordSeries stdoutId: 1 data:  string .

	self streamAndAssertContents: 
		#(1 6 0 1 255 255 0 0) asByteArray , 
		string asByteArray , 
		#(1 6 0 1 0 0 0 0) asByteArray