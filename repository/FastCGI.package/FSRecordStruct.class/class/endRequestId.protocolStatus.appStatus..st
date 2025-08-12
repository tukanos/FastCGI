other
endRequestId: anId protocolStatus:  aNum appStatus: aNum2
	"SW: typedef struct {
	unsigned char appStatusB3;	
	unsigned char appStatusB2;
	unsigned char appStatusB1;
	unsigned char appStatusB0;
	unsigned char protocolStatus;
	unsigned char reserved[3]; } FCGI_EndRequestBody; "

	| data |
	data := self emptyData.
	data replaceFrom: 1 to: 4 with: (FSNameValuePair fourBytesFor: aNum2).
	data at: 5 put: aNum.
	^self type: FCGI_END_REQUEST requestId: anId data:  data