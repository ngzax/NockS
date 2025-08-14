testing
testRetrievingAtIndex3
	"The tail of every node n is 2n - 1"
      "/[3 a b] => b"
 
	self assert: [(cell_cc atIndex: 3) = cell_ca].
