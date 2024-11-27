instance creation
head: aNoun tail: anotherNoun
	"Answers a new initialized Cell"
	^ self basicNew 
		h: aNoun; 
		t: anotherNoun;
		yourself.
