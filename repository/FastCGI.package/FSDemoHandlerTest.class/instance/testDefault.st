other
testDefault
  | string vrsn |
  self paramAt: 'a1' put: 'b2'.
  stdin := 'abcd'.
  self setResponderRole.
  self answerRole.
  string := role stdout.
  self assert: (string matchPattern: #('Content-type:' $*)).
  self assert: (string matchPattern: #($* 'al' $*)).
  self
    assert:
      ((string matchPattern: #($* '97 98 99 100' $*))
        or: [ string matchPattern: #($* '97, 98, 99, 100' $*) ])