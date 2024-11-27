testing
testHasRightAssociativityForNTuples

	"# [1, 0, [541, 25, 99]] => [1, [0, [541, [25, 99]]]]"
     self assert: [(Noun fromArray: (Array with: 1 
	                                     with: 0 
	                                     with: (Array with: 541 with: 25 with: 99))) asArray = #(#(1) #(#(0) #(#(541) #(#(25) #(99)))))].

	"# Real Nock"
     self assert: [(Noun fromArray: (Array with: (Array with: 2 with: (Array with: 3 with: 4))
	                                      "Nothing more expected ->"with: (Array with: 0 with: 1))) asArray = #(#(#(2) #(#(3) #(4))) #(#(0) #(1)))].
	
