accessing
asArray
	"Answers this Cell in Array representation"
	"[@h.cell? ? @h.ary : @h.i, @t.cell? ? @t.ary : @t.i]"
	^ Array 
		with: (self h asArray)
	 	with: (self t asArray).