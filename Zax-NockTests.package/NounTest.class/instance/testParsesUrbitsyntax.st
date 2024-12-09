testing
testParsesUrbitsyntax
	"e.g. in the urbit dojo and code a cell looks like: [a b c d] as shorthand for [a [b [c d]]]"
	"[0, 1, 2, 3] => [0, [1, [2, 3]]]"
     self assert: [(Noun fromString: '[0 1 2 3]') asArray = #(#(0) #(#(1) #(#(2) #(3))))].	
