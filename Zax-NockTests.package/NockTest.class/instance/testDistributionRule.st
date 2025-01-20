testing
testDistributionRule
	"The Nock Opcode (value at tree position 2) is allowed
	 to be a Cell. This allows us, among other things to have
	 a function applied against a list of values.
	
	 Some people call this 'implicit cons'."
	
	| n2|
	"n1 := Nock parseString: '50 [[0 1] [1 203] [0 1] [1 19] [1 76]]'.
	self assert: [(n1 interpret) printString = '[50 203 50 19 76]']."

	n2 := Nock parseString: '[19 20] [[0 1] [1 76] [4 4 0 3]]'.
	self assert: [(n2 interpret) printString = '[[19 20] 76 22]'].
