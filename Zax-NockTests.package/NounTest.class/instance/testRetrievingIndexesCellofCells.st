testing
testRetrievingIndexesCellofCells
	"[[0 1] [2 [3 4]]]"
	| cello |
	cello := Noun fromArray: #(#(0 1) #(#(2) #(3 4))).
	
	self assert: [(cello atIndex: 1) = cello].
	self assert: [(cello atIndex: 2) = cell01a].
	self assert: [((cello atIndex: 3) asString) = '[2 [3 4]]'].
	
	self assert: [(cello atIndex: 4) = atom0].
	self assert: [(cello atIndex: 5) = atom1].
	self assert: [(cello atIndex: 6) = (Atom new: 2)].
	self assert: [(cello atIndex: 7) = (Cell head: (Atom new: 3) tail: (Atom new: 4))].
	self should: [cello atIndex: 8] raise: Error. 
	self should: [cello atIndex: 9] raise: Error. 
	
	self assert: [(cello atIndex: 14) = (Atom new: 3)].
	self assert: [(cello atIndex: 15) = (Atom new: 4)].
	self should: [cello atIndex: 16] raise: Error. 