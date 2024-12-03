testing
testRetrievingAtIndex1
	"Inedex 1 is the tree root, the entire Noun itself."
	"/[1 a] => a"
	
	self assert: [(atom0 atIndex: 1) = atom0].
	self assert: [(cell01a atIndex: 1) = cell01a].

	self assert: [(noun012 atIndex: 1) = noun012].