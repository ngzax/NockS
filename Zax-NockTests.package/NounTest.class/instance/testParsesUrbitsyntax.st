testing
testParsesUrbitsyntax
	"e.g. in the urbit dojo and code a cell looks like: [a b c d] as shorthand for [a [b [c d]]]"
	| u |
	
	"[0, 1, 2, 3] => [0, [1, [2, 3]]]"
	u := (Noun fromString: '[0 1 2 3]').
	self assert: [u asArray = #(#(0) #(#(1) #(#(2) #(3))))].	
	self assert: [u atIndex: 2 = #(0)].
	self assert: [u atIndex: 6 = #(1)].

	"[[50 51] [0 2]] => [[50, 51] [0, 2]]"
	u := (Noun fromString: '[50 51] [0 2]').	
	self assert: [u asArray = #(#(#(50) #(51)) #(#(0) #(2)))].
	self assert: [u atIndex: 2 = #(#(50) #(51))].
	self assert: [u atIndex: 3 = #(#(0) #(2))].
	
