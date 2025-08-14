Class {
	#name : 'BaselineOfVeritasReMobidyc',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfVeritasReMobidyc',
	#package : 'BaselineOfVeritasReMobidyc'
}

{ #category : 'baselines' }
BaselineOfVeritasReMobidyc >> baseline: spec [

	<baseline>
	spec for: #common do: [
		spec package: 'VeritasBenchSuite'.
		spec package: 'Veritas-ReMobidyc' with: [ spec requires: #('VeritasBenchSuite') ] .
		
		"External dependencies"
		spec baseline: 'ReMobidyc' with: [ spec repository: 'github://jordanmontt/ReMobidyc:main' ].

		"Groups"
		spec group: 'Core' with: #( 'Veritas-ReMobidyc' ) ]
]
