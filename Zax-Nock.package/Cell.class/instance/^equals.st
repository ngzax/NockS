comparing
= anotherCell

	anotherCell isCell ifTrue: [^ (self h = anotherCell h) and: [self t = anotherCell t]].
	^ false.