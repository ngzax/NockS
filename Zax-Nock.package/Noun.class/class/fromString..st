instance creation
fromString: aString
	"Answers a new instance of a Noun (always either an Atom or Cell subclass)
	 depending on the contents of the String which is in Urbit Nock format."
	
	| a b c |
      a := aString copyReplaceAll: '[' with: '#('.
	b := a copyReplaceAll: ']' with: ')'.
	c := '#(', b, ')'.	
	^ Noun fromArray: (Compiler evaluate: c).