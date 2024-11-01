instance creation
new: aNaturalNumber
	"Sets our internal instance var i and returns."
	aNaturalNumber isNumber  ifTrue: [
		^ self basicNew i: aNaturalNumber; yourself.
	].
	self error: 'an Atom must be initialized with a Natural Number'. 
