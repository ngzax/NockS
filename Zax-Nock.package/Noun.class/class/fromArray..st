instance creation
fromArray: anArray
	"Answers a new instance of a Noun (either an Atom or Cell subclass)
	 depending on the contents of the Array"
	
      anArray isArray ifFalse: [Error signal: 'a Noun must be initialized with an Array'].
	(anArray size = 1) ifTrue: [
	 	^ Atom new i: (anArray at: 1).
	].
	^ Noun new ary: (Noun toTuples: anArray).
	