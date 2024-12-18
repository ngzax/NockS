instance creation
parseString: aNounString
	| n |
	n := Noun fromString: aNounString.
	^ self basicNew 
			head: n head;
		 	tail: n tail;
		 	yourself