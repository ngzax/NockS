accessing
atIndex: aNumber
	"Answer the Noun at the requested Index"
	(aNumber >= 1) ifTrue: [
		(aNumber = 1) ifTrue: [^ self].
		(aNumber = 2) ifTrue: [^ self h].
		(aNumber = 3) ifTrue: [^ self t].
	].
	Error signal: 'Invalid Index'.