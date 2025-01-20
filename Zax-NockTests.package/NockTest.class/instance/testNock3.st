testing
testNock3
	"*[a 3 b]  ?*[a b]"
	"Check whether the value Is a cell. Return 0 if yes, 1 if no"
	
	| n1 n2 |
	"Atom in slot 1? FALSE"
	n1 := Nock parseString: '[50 [3 0 1]]'.
	self deny: [n1 interpret].

	"Cell in slot 1? TRUE"	
	n2 := Nock parseString: '[[20 30] [3 0 1]]'.
	self assert: [n2 interpret].
