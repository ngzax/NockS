printing
printOn: aStream

	aStream nextPutAll: 'anAtom('.
	aStream nextPutAll: self i printString.
	aStream nextPutAll: ')'.