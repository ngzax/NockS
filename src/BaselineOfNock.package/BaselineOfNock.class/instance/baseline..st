baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [
			"Packages"
			spec
				package: 'Nock';
				package: 'Nock-Tests' with: [ spec requires: #( 'Nock' ) ]
		]