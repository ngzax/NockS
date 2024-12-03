testing
testRetrievingAtIndex4AndAbove

	"Invalid" 
	self should: [cell01a atIndex: 4] raise: Error. 

	"For a Noun which is a Cell of a Cell, Index 4 is just Index 2 of Index 2."
	self assert: [(noun012 atIndex: 4) = cell01a].