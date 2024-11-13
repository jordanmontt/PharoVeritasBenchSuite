Class {
	#name : 'BaselineOfAlSitExDataFrame',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfAlSitExDataFrame',
	#package : 'BaselineOfAlSitExDataFrame'
}

{ #category : 'baselines' }
BaselineOfAlSitExDataFrame >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		spec package: 'ACEx-DataFrame'.

		"External dependencies"
		spec
 			baseline: 'DataFrame'
			with: [ spec repository: 'github://PolyMathOrg/DataFrame/src' ].

		"Linking external dependencies"
		spec package: 'ACEx-DataFrame'
			with: [ spec requires: #('DataFrame') ].

		"Groups"
		spec group: 'Core' with: #( 'ACEx-DataFrame' ) ]
]
