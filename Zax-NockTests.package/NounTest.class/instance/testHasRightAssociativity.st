testing
testHasRightAssociativity
	"for single element array : [0] => [0]"
	self assert: [((Noun fromArray: (Array with: 0)) asArray) = 0].
