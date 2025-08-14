testing
testNock0BadSlot
	"*[a 0 b]  /[b a]"
	
	"Slot 8"
	self assert: [noun8 opcode = 0].
	self assert: [noun8 slot = 8].
	
	self should: [noun8 interpret] raise: Error.