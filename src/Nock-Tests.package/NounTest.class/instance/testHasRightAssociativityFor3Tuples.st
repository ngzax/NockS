testing
testHasRightAssociativityFor3Tuples

	"# [0, 1, 2] => [0, [1, 2]]"
	self assert: [((Noun fromArray: (Array with: 0 with: 1 with: 2)) asArray) = #(0 #(1 2))].

	"# [0, [1, 2]] => [0, [1, 2]]"
 	self assert: [((Noun fromArray: (Array with: 0 with: (Array with: 1 with: 2))) asArray) = #(0 #(1 2))].
