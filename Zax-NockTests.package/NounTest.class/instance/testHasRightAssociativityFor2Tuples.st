testing
testHasRightAssociativityFor2Tuples
	"# [0, 1] => [0, 1]"
      self assert: [((Noun fromArray: (Array with: 0 with: 1)) ary) = #(0 1)].

	"# ([[0, 1], 2] => [[0, 1], 2])"
      self assert: [((Noun fromArray: (Array with: (Array with: 0 with: 1) with: 2)) ary) = #(#(0 1) 2)].