other
unknownType: aTypeNumber
	"SW: FCGI_UNKNOWN_TYPE is a management record
	The contentData component of a FCGI_UNKNOWN_TYPE record has the form: 
        typedef struct {
            unsigned char type;    
            unsigned char reserved[7];
        } FCGI_UnknownTypeBody;"

	self assert: [aTypeNumber isKindOf: Integer].
	^self type: FCGI_UNKNOWN_TYPE  requestId: 0 data:  (self dataWith: aTypeNumber)