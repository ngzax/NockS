tests
testCanBeRepresentedAsAnArray

	"An Atom represents itself in Array format as an Integer." 
	self assert: [zod asArray = 0].