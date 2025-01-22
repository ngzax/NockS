testing
testCreating
	"Creating Nock from an Array or a String should be the same."
	
	|n1 n2|
	n1 := Nock parse: #(50 #(0 1)).
	n2 := Nock parseString: '50 [0 1]'.
	self assert: [n1 = n2].
	
	n1 := Nock parse: #(50 #(#(0 1) #(1 203))).
	n2 := Nock parseString: '50 [[0 1] [1 203]]'.
	self assert: [n1 = n2].
