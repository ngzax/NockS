tests
testMustBeInitializedWithANaturalNumber

	self assert: (0 = (Atom new: 0) i).
	self should: [Atom new: 'a'] raise: Error.