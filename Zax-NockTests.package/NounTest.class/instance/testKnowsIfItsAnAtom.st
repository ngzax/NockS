testing
testKnowsIfItsAnAtom
	
	self assert: [atom0 isAtom].
	self deny: [cell0 isAtom].
	self deny: [noun0 isAtom].