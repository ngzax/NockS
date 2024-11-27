testing
testRetrievingAtIndexRoot
	"1 is the tree root"
	"/[1 a] => a"
	
	"Atom"
	self assert: [(atom0 atIndex: 1) = atom0].

	"self assert: [noun0 atIndex: 1 = noun0]."
