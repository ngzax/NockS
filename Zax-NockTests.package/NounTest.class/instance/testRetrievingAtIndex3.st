testing
testRetrievingAtIndex3
	"The tail of every node n is 2n - 1"
      "/[3 a b] => b"
 
	self assert: [(cell01a atIndex: 3) = atom1].

	"General Case"
	self assert: [(noun012 atIndex: 3) = (Noun fromArray: #(2))].