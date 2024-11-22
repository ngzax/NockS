testing
testIsEqualToItself

	self assert: (atom0 = atom0).	
	self assert: (cell0 = cell0).
	self deny: (atom0 = cell0).
