testing
testCanBePrinted

	self assert: [cell_aa printString = '[0 1]'].
	self assert: [cell_cc printString = '[[0 [0 1]] [[0 [0 1]] 0]]'].