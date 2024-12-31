testing
testNock4
	"*[a 4 b]  +*[a b]"
	"Increment Operator"
	
	| n1 n2 |
	"increments a when it's an atom"
	n1 := Nock parseString: '[50 [4 0 1]]'.
	self assert: [n1 interpret = 51].

	"Cell in slot 7"	
"	n2 := Nock parseString: '[[20 30] [1 [2 587]]]'.
	self assert: [n2 interpret = (Cell head: 2 tail: 587)]."
