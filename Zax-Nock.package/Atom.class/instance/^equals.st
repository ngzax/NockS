comparing
= anotherAtom

	anotherAtom isAtom ifTrue: [^ (self i = anotherAtom i) or: [anotherAtom = self i]].
	^ false.