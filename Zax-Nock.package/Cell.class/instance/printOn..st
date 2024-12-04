printing
printOn: aStream 
	aStream nextPutAll: '['.
	aStream nextPutAll: self head printString;
		 space.
	aStream nextPutAll: self tail printString.
	aStream nextPutAll: ']'