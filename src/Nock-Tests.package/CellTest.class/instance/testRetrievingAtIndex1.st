testing
testRetrievingAtIndex1
	"Index 1 is the tree root, the entire Cell itself."
	"/[1 a] => a"
	
	self assert: [(cell_aa atIndex: 1) = cell_aa].
