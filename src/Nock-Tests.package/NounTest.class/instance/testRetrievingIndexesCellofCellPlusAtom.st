testing
testRetrievingIndexesCellofCellPlusAtom

	"[[0 1] 2]"
	"Invalid" 
	self should: [cell01a atIndex: 4] raise: Error. 

	"For a Noun which is a Cell with a Cell at it's Head, Index 4 is the Head of the Head."
	self assert: [(noun012 atIndex: 4) = atom0].
	
	"For a Noun which is a Cell with a Cell at it's Head, Index 5 is the Tail of the Head."
	self assert: [(noun012 atIndex: 5) = atom1].

	"Anything above 5 fails."
	self should: [cell01a atIndex: 6] raise: Error. 
	self should: [cell01a atIndex: 7] raise: Error. 
	
