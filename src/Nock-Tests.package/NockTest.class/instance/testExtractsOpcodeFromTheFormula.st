testing
testExtractsOpcodeFromTheFormula
	| n |
	n := (Cell head: (Cell head: 50 tail: 52) tail: (Cell head: 0 tail: 2)) nock.
	self assert: [ n opcode = 0].