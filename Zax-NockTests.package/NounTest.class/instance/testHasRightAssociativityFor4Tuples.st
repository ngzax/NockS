testing
testHasRightAssociativityFor4Tuples

	"for 4-tuples: # [0, 1, 2, 3] => [0, [1, [2, 3]]]"
 	self assert: [((Noun fromArray: (Array with: 0 with: 1 with: 2 with: 3)) asArray) = #(#(0) #(#(1) #(#(2) #(3))))].
