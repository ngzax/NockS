testing
testExtractsTheNockOpcodeFromTheFormula
	self assert: [(Cell head: (Cell head: 50 tail: 52) tail: (Cell head: 0 tail: 2)) opcode = 0].