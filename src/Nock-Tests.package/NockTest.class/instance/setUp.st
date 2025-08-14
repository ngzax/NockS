running
setUp

	cell_50_51 := Cell head: (Atom new: 50) tail: (Atom new: 51).

	noun1 := Nock parse: #(#(50 51) #(0 1)).
	noun2 := Nock parse: #(#(50 51) #(0 2)).

	noun8 := Nock parse: #(#(50 51) #(0 8)).