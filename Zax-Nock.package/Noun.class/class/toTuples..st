instance creation
toTuples: anArray
	"[a b c] =>  [a [b c]]"
      "q.v. https://github.com/belisarius222/pynock"

	anArray isArray ifFalse: [^ anArray].
	(anArray size = 1) ifTrue: [^ anArray].	
	(anArray size = 2) ifTrue: [^ Array with: (Noun toTuples: anArray first) 
		                              with: (Noun toTuples: anArray second)].
	^ Array with: (anArray at: 1) 
	        with: (Noun toTuples: (anArray allButFirst)).