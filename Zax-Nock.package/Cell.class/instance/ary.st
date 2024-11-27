accessing
ary
	"Answers this Cell in Array representation"
	"[@h.cell? ? @h.ary : @h.i, @t.cell? ? @t.ary : @t.i]"
	^ Array 
		with: (self h isCell ifTrue: [self h ary] ifFalse: [self h i])
	 	with: (self t isCell ifTrue: [self t ary] ifFalse: [self t i]).