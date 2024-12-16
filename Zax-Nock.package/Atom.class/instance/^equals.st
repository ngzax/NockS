comparing
= anotherAtom

	anotherAtom isInteger 
		ifTrue: [^ self i == anotherAtom]
		ifFalse: [anotherAtom isAtom
			ifTrue: [^ (self i = anotherAtom i) or: [anotherAtom = self i]]
	].
	^ false.