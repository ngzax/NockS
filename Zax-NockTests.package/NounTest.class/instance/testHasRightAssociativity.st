testing
testHasRightAssociativity

	"for single element array : [0] => [0]"
	self assert: [((Noun fromArray: (Array with: 0)) ary) = #(0)].
	
	"for tuple nouns : # [0, 1] => [0, 1]"
      self assert: [((Noun fromArray: (Array with: 0 with: 1)) ary) = #(0 1)].

	"for tuple with [cell, atom] : # ([[0, 1], 2] => [[0, 1], 2])"
      self assert: [((Noun fromArray: (Array with: (Array with: 0 with: 1) with: 2)) ary) = #(#(0 1) 2)].

	"for 3-tuples : # [0, 1, 2] => [0, [1, 2]]"
     self assert: [((Noun fromArray: (Array with: 0 with: 1 with: 2)) ary) = #(0 #(1 2))].

	"for 3-tuples : # [0, [1, 2]] => [0, [1, 2]]"
     self assert: [((Noun fromArray: (Array with: 0 with: (Array with: 1 with: 2))) ary) = #(0 #(1 2))].

	"for 4-tuples: # [0, 1, 2, 3] => [0, [1, [2, 3]]]"
     self assert: [((Noun fromArray: (Array with: 0 with: 1 with: 2 with: 3)) ary) = #(0 #(1 #(2 3)))].
