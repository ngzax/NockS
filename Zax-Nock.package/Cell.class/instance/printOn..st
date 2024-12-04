printing
printOn: aStream

	aStream nextPutAll: '['.
	aStream nextPutAll: self h printString; space.
	aStream nextPutAll: self t printString.
	aStream nextPutAll: ']'.