running
interpret
	"Run the Nock code (if appropriate) and return the result."
	| op |
	
	self isNock ifFalse: [Error signal: 'Cannot interpret without [[subject] [formula]]'].
	op := self opcode.
	(op = 0) 
		ifTrue: [(self slot isAtom) 
			ifTrue: [^ self subject atIndex: self slot i]
			ifFalse: [Error signal: 'Slot must be an Atom']
		].
	(op = 1)
		ifTrue: [^ self slot].