testing
testRetrievingIndexesCellofCells

	"[[0 1] [2 [3 4]]]"
	| cello |
	cello := Noun fromArray: #(#(0 1) #(#(2) #(3 4))).
	
	self assert: [(cello atIndex: 1) = cello].
	self assert: [(cello atIndex: 2) = cell01a].
	self assert: [((cello atIndex: 3) asString) = '[2 [3 4]]'].
	self assert: [(cello atIndex: 4) = atom0].
	
	"For a Noun which is a Cell with a Cell at it's Head, Index 5 is the Tail of the Head.
	self assert: [(noun012 atIndex: 5) = atom1].

	self should: [cell01a atIndex: 6] raise: Error. 
	self should: [cell01a atIndex: 7] raise: Error. 
	
	self should: [cell01a atIndex: 4] raise: Error. "

