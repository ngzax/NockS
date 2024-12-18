testing
testNock0
	"*[a 0 b]  /[b a]"
	"Get Noun at address. Returns the Noun at the passed Slot."
	self assert: [noun1 subject printString = '[50 51]'].
	
	"Slot 1"
	self assert: [noun1 opcode = 0].
	self assert: [noun1 slot = 1].
	
	self assert: [noun1 interpret = cell_50_51].
	self assert: [noun1 interpret asArray = #(50 51)].
	
	"Slot 2"
	self assert: [noun2 opcode = 0].
	self assert: [noun2 slot = 2].
	self assert: [noun2 interpret = 50].	