instance creation
fromArray: anArray
	"Answers a new instance of a Noun (either an Atom or Cell subclass)
	 depending on the contents of the Array"
	| tuples |
 
	anArray isArray ifFalse: [^ Atom new: anArray].
	(anArray size = 1) ifTrue: [
	 	^ Atom new: (anArray at: 1).
	].
	tuples := Noun toTuples: anArray.
	^ Cell head: (Noun fromArray: tuples first) tail: (Noun fromArray: tuples second).
	