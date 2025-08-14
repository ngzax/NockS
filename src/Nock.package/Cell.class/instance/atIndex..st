accessing
atIndex: aNumber 
	"Answer the Noun at the	requested Index"
	| bin depth noun |
	
	aNumber >= 1
		ifTrue: [
			aNumber = 1	ifTrue: [^ self].
			aNumber = 2	ifTrue: [^ (self head)].
			aNumber = 3	ifTrue: [^ (self tail)].
				
			bin := (String streamContents: [:str | aNumber printOn: str base: 2]) allButFirst.
			bin isNil ifTrue: [Error signal: 'Invalid Index'].
			
			noun := self.
			depth := 0.
			bin do: [:b | 
				depth := depth + 1.
				noun isCell
					ifTrue: [
						b = $0 ifTrue: [noun := (noun head)] ifFalse: [noun := (noun tail)]]
					ifFalse: [
						depth < bin size
						ifFalse: [Error signal: 'Invalid Index']]].
			^ noun].
	Error signal: 'Invalid Index'
