testing
testKnowsIfItsAnAtom
	
	self assert: [atom0 isAtom].
	self deny: [cell0 isAtom].