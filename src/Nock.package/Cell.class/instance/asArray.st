accessing
asArray
	"Answers this Cell in Array representation"
	^ Array with: (self head asArray) with: (self tail asArray).