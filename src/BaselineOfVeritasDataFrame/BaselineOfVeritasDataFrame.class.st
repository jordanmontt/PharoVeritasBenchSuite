Class {
	#name : 'BaselineOfVeritasDataFrame',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfVeritasDataFrame',
	#package : 'BaselineOfVeritasDataFrame'
}

{ #category : 'baselines' }
BaselineOfVeritasDataFrame >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		spec package: 'VeritasBenchSuite'.

		spec package: 'Veritas-DataFrame' with: [ spec requires: 'VeritasBenchSuite' ].

		"External dependencies"
		spec baseline: 'DataFrame' with: [ spec repository: 'github://PolyMathOrg/DataFrame/src' ].
		"Linking external dependencies"
		spec package: 'Veritas-DataFrame' with: [ spec requires: #('DataFrame') ].

		spec group: 'Core' with: #( 'Veritas-DataFrame' ) ]
]
