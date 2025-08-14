testing
testHasASubjectAndFormula

	| cell_aa cell_ac cell_ca cell_cc |
	cell_aa := Cell head: (Atom new: 0) tail: (Atom new: 1).
	cell_ac := Cell head: (Atom new: 0) tail: cell_aa.
	cell_ca := Cell head: cell_ac tail: (Atom new: 0).
	cell_cc := Cell head: cell_ac tail: cell_ca.

	self assert: [cell_cc nock subject = cell_ac].
	self assert: [cell_cc nock formula = cell_ca].