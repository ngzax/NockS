accessing
atIndex: aNumber
	"Answer the Noun at the requested Index"
	|bin depth noun|
	(aNumber >= 1) ifTrue: [
		(aNumber = 1) ifTrue: [^ self].
		(aNumber = 2) ifTrue: [^ self h].
		(aNumber = 3) ifTrue: [^ self t].
		
		bin := (String streamContents: [:str | aNumber printOn: str base: 2]) allButFirst.
		bin isNil ifTrue: [Error signal: 'Invalid Index'].
		
		noun := self.
		depth := 0.
		
		bin do: [:b |
			depth := depth + 1.
			noun isCell 
				ifTrue: [
					(b = $0) ifTrue: [noun := noun h] ifFalse: [noun := noun t].
				] 
				ifFalse: [
					(depth < bin size) ifFalse: [Error signal: 'Invalid Index']
				].
		].
		^ noun.
	].
	Error signal: 'Invalid Index'. "Period or right bracket expected ->"