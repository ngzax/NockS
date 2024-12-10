instance creation
fromString: aString
	"Answers a new instance of a Noun (always either an Atom or Cell subclass)
	 depending on the contents of the String which is in Urbit Nock format."
	^ Noun fromArray: (Array withAll: (aString findTokens collect: [:t | (t select: [:each | each isDigit]) asNumber])).