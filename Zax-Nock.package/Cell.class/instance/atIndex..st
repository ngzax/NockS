accessing
atIndex: aNumber
	"Answer the Noun at the requested Index"
	|bin depth noun|
	(aNumber >= 1) ifTrue: [
		(aNumber = 1) ifTrue: [^ self].
		(aNumber = 2) ifTrue: [^ self h].
		(aNumber = 3) ifTrue: [^ self t].
		
		bin := (String streamContents: [:str | aNumber printOn: str base: 2]) allButFirst.
		noun := self.
		depth := 0.
		
		bin do: [:index | noun isCell ifTrue: [^ noun h]].
	].
	Error signal: 'Invalid Index'.