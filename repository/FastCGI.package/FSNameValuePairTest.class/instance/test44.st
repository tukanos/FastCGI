other
test44
	| s1 s2 |
	s1 := (String new: 128) atAllPut: $a; yourself.
	s2 := (String new: 256) atAllPut: $b; yourself.
	self 
		assertName: s1
		value: s2
		is: (ByteArray withAll: #(128 0 0 128 128 0 1 0)) , s1 asByteArray , s2 asByteArray