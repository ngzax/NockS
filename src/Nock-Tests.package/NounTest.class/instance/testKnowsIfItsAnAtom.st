testing
testKnowsIfItsAnAtom
	
	self assert: [atom0 isAtom].
	self deny: [cell01a isAtom].
