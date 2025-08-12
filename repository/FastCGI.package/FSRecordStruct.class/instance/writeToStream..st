other
writeToStream: aFSFCGIGsStream 
 
  | header | 
  (header := ByteArray new: 8) 
    unsigned8At:  1 put: FCGI_VERSION_1; 
    unsigned8At:  2 put: type; 
    unsigned16At: 3 put: requestId; 
    unsigned16At: 5 put: contentLength; 
    unsigned8At:  7 put: self paddingLength; 
    unsigned8At:  8 put: 0; 
    yourself. 
  aFSFCGIGsStream 
    nextPutAll: header; 
    nextPutAll: self data; 
    yourself.