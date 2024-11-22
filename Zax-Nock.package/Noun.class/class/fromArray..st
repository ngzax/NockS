as yet unclassified
fromArray: anArray
	"Answers a new instance of a Noun (either an Atom or Cell subclass)
	 depending on the contents of the Array"
	
	(anArray size = 1) ifTrue: [
	 	^ Atom new i: anArray.
	].
	^Noun new.
	