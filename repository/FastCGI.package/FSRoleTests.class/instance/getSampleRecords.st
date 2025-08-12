other
getSampleRecords
	^Array with: self getBeginRecord
		with: (FSRecordSeries paramsId: 1
				pairs: (Array 
						with: (FSNameValuePair name: 'a' value: 'b')
						with: (FSNameValuePair name: 'c' value: 'd')
						with: (FSNameValuePair name: 'CONTENT_LENGTH' value: '0')))