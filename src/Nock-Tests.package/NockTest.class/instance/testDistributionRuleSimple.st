testing
testDistributionRuleSimple
	"The Nock Formula (or Opcode) (value at tree position 3) is allowed
	 to be a Cell. This allows us, among other things to have
	 a function applied against a list of values.
	
	 Some people call this 'implicit cons'."
	
	|n1 n2|
	n1 := Nock parseString: '50 [0 1]'.
	self assert: [(n1 interpret) printString = '50'].

	n2 := Nock parseString: '50 0'.
	self should: [(n2 interpret) printString] raise: Error.

	n1 := Nock parseString: '50 [[0 1] [1 203]]'.
	self assert: [(n1 interpret) printString = '[50 203]'].