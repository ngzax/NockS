printing
printString

	^ String streamContents:	[:strm | self printOn: strm].