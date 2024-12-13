testing
testExtractsTheNockOpcodeRecursively
	self assert: [(Cell head: 50 tail: (Noun fromArray: #(4 0 1))) opcode = (Atom new: 4)].