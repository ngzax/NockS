testing
testExtractsOpcodeRecursively
	| n |
	n := (Cell head: 50 tail: (Noun fromArray: #(4 0 1))) nock.
	self assert: [ n opcode = (Atom new: 4)].