tests
testReturnsItselfForIndexOne

	"/[1 a] => a"
      ".*(1 [0 1]) => 1"
      self assert: [(zod atIndex: 1) = zod].
