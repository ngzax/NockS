comparing
= anotherCell 
	anotherCell isCell
		ifTrue: [^ self head = anotherCell head
				and: [self tail = anotherCell tail]].
	^ false