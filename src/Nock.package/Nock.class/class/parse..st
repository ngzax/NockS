instance creation
parse: aNounArray
	| n |
	n := Noun fromArray: aNounArray.
	^ self basicNew 
			head: n head;
		 	tail: n tail;
		 	yourself