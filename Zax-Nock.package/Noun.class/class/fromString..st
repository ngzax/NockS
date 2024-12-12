instance creation
fromString: aString
	"Answers a new instance of a Noun (always either an Atom or Cell subclass)
	 depending on the contents of the String which is in Urbit Nock format."
	| a aa |
	"First split out any cells"
	a := ((aString copyReplaceTokens: ' ' with: ',') findTokens: ',') asArray.
	(a size = 1) ifTrue: [
		^ Noun fromArray: ((((a at: 1) copyWithRegex: '\s' matchesReplacedWith: ',') findTokens: ',') collect: [:t | (t select: [:each | each isDigit]) asNumber]) asArray.
	].
	
	"Now split any of those cells"
	aa := a collect: [:cell | (((cell copyWithRegex: '\s' matchesReplacedWith: ',') findTokens: ',') collect: [:t | (t select: [:each | each isDigit]) asNumber]) asArray].

	^ Noun fromArray: aa asArray.
	
	"(Array withAll: ((s findTokens: ',') collect: [:t | (t select: [:each | each isDigit]) asNumber]))."