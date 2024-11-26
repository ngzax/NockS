instance creation
toTuples: anArray
	"[a b c]  [a [b c]]
      q.v. https://github.com/belisarius222/pynock"

	"return ary unless ary.is_a? Array
       return ary if 1 == ary.size
       return [to_tuples(ary[0]), to_tuples(ary[1])] if 2 == ary.size
       return [ary[0], to_tuples(ary[1..])]"

	anArray isArray ifFalse: [^ anArray].
	(anArray size = 1) ifTrue: [^ anArray].	
	(anArray size = 2) ifTrue: [^ Array with: (anArray at: 1) with: (anArray at: 2)].
	^ Array with: (anArray at: 1) with: (Noun toTuples: (anArray allButFirst)).