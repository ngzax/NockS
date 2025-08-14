instance creation
toTuples: anArray
	"[a b c] =>  [a [b c]]"
      "q.v. https://github.com/belisarius222/pynock"

	anArray isArray ifFalse: [Error signal: 'a Noun must be initialized with an Array'].
	(anArray size = 1) ifTrue: [^ anArray].	
	(anArray size = 2) ifTrue: [^ Array with: anArray first
		                              with: anArray second].
	^ Array with: (anArray first) 
	        with: (Noun toTuples: (anArray allButFirst)).