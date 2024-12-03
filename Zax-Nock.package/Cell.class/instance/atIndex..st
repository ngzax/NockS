accessing
atIndex: aNumber
	"Answer the Noun at the requested Index"
	(aNumber >= 1) ifTrue: [
		^ self.
	].
	Error signal: 'Invalid Index'.