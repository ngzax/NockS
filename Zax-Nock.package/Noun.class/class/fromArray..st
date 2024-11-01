as yet unclassified
fromArray: anArray
	"Answers a new instance of a Noun (either an Atom or Cell subclass)
	 depending on the contents of the Array"
	
	^ Atom new i: anArray.

	