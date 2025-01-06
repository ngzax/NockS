running
interpret
	"Run the Nock code (if appropriate) and return the result."
	| base n op |
	
	self isNock ifFalse: [Error signal: 'Cannot interpret without [[subject] [formula]]'].
	op := self opcode.
	(op = 0) 
		ifTrue: [(self slot isAtom) 
			ifTrue: [^ self subject atIndex: self slot i]
			ifFalse: [Error signal: 'Slot must be an Atom']
		].
	(op = 1)
		ifTrue: [^ self slot].
	base := Noun fromArray: (Array with: (self subject asArray) with: ((self formula atIndex: 3) asArray)).
	n := (Nock parse: base asArray) interpret.
	(op = 3)
	  ifTrue: [^ n isCell].
	(op = 4)
	  ifTrue: [n i: ((n i) + 1)].
	^ n.