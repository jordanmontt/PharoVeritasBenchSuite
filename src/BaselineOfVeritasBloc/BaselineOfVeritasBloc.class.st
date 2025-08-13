Class {
	#name : 'BaselineOfVeritasBloc',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfVeritasBloc',
	#package : 'BaselineOfVeritasBloc'
}

{ #category : 'baselines' }
BaselineOfVeritasBloc >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		spec package: 'VeritasBenchSuite'.
		spec package: 'Veritas-Bloc' with: [ spec requires: #( 'VeritasBenchSuite' ) ].

		"External dependencies"
		spec
 			baseline: 'BlocBenchs'
			with: [ spec repository: 'github://pharo-graphics/BlocBenchs:master/src' ].
		spec package: 'Veritas-Bloc' with: [ spec requires: #('BlocBenchs') ].

		"Groups"
		spec group: 'Core' with: #( 'Veritas-Bloc' ) ]
]
