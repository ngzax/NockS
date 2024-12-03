testing
testRetrievingAtIndex2
	"The head of every node n is 2n"
      "/[2 a b] => a"
 
	"Atoms do not have an Index 2"
	self should: [(atom0 atIndex: 2)] raise: Error.

	"Cell"	
	self assert: [(cell01a atIndex: 2) = atom0].

	"General Case"
	self assert: [(noun012 atIndex: 2) = cell01a].