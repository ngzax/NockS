testing
testRetrievingAtIndex2
	"The head of every node n is 2n"
      "/[2 a b] => a"
 
	self assert: [(cell_ca atIndex: 2) = cell_ac].