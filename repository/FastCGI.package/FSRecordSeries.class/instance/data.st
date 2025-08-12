other
data
	"Answer the data of the record(series) as a ByteArray"

	| stream |
	stream := WriteStream on: ByteArray new.
	records do: [ :each | stream nextPutAll: each data].
	^stream contents