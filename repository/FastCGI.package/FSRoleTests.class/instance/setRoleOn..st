other
setRoleOn: aByteArray 
	| connection |
	self setExternalStreamOn: aByteArray.
	connection := FSConnection new stream: extStream.
	connection makeActive.
	connection server: FSSocketServer new.
	role := connection role.
	self assertRoleClass