testing
testNock1
	"*[a 1 b]  b"
	"Copy and return value, ignoring sample. Always just echoes slot 7"
	
	| n1 n2 |
	"Atom in slot 7"
	n1 := Nock parseString: '[20 30] [1 67]'.
	self assert: [n1 interpret = 67].

	"Cell in slot 7"	
	n2 := Nock parseString: '[20 30] [1 [2 587]]'.
	self assert: [n2 interpret = (Cell head: 2 tail: 587)].
