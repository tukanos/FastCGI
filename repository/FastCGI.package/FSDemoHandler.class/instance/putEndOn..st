other
putEndOn: stream
	stream
		nextPutAll: '<hr/>';
		nextPutAll: self thanksString;
		nextPutAll: '</body></html>'.