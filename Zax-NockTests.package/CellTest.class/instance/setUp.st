running
setUp

	atom0 := Atom new: 0.
	atom1 := Atom new: 1.

	cell_aa := Cell head: atom0   tail: atom1.
	cell_ac := Cell head: atom0   tail: cell_aa.
	cell_ca := Cell head: cell_ac tail: atom0.
	cell_cc := Cell head: cell_ac tail: cell_ca.
