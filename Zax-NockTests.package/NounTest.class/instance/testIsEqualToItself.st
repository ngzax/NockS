testing
testIsEqualToItself

	self assert: (atom0 = atom0).	
	self assert: (cell01a = cell01a).

	self deny: (atom0 = cell01a).
