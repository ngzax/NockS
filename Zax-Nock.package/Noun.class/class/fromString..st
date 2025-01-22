instance creation
fromString: aString
	"Answers a new instance of a Noun (always either an Atom or Cell subclass)
	 depending on the contents of the String which is in Urbit Nock format."
	
	| cellArray nounArray |
	"First split out any cells"
	cellArray := ((aString copyReplaceTokens: ' ' with: ',') findTokens: ',') asArray.
	self halt.
	"Now split any of those cells"
	nounArray := cellArray collect: [:cellString | Cell parse: cellString].

	^ Noun fromArray: ((nounArray size = 1) ifTrue: [nounArray flatten] ifFalse: [nounArray]).