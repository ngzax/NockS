testing
testNock0CrashesIfSlotIsACell
	"*[a 0 b]  /[b a]"
	
	| n |
	n := Nock parse: #(#(50 51) #(0 #(0 1))).
	
	self assert: [n opcode = 0].	
	self should: [n interpret] raise: Error.