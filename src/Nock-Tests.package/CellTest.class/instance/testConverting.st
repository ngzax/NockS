testing
testConverting
	self assert: [cell_aa asArray = #(0 1)].
	self assert: [cell_ac asArray = #(0 #(0 1))].
	self assert: [cell_ca asArray = #(#(0 #(0 1)) 0)].

	"cell_cc = #(cell_ac cell_ca)"
	self assert: [cell_cc asArray = #(#(0 #(0 1)) #(#(0 #(0 1)) 0))].