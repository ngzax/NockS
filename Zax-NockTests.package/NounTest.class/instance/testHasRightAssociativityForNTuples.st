testing
testHasRightAssociativityForNTuples

	"# [1, 0, [541, 25, 99]] => [1, [0, [541, [25, 99]]]]"
     self assert: [(Noun fromArray: (Array with: 1 
	                                     with: 0 
	                                     with: (Array with: 541 with: 25 with: 99))) ary = #(1 #(0 #(541 #(25 99))))].
