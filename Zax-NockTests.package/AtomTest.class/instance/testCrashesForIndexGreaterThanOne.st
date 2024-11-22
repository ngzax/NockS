tests
testCrashesForIndexGreaterThanOne

	"/[1 a] => a"
      ".*(1 [0 2]) => dojo: Hoon expression failed."
      self should: [zod atIndex: 2] raise: Error description: 'Argument Error'.
