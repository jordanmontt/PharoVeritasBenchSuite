Class {
	#name : 'BaselineOfVeritasCormas',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfVeritasCormas',
	#package : 'BaselineOfVeritasCormas'
}

{ #category : 'baselines' }
BaselineOfVeritasCormas >> baseline: spec [

	<baseline>
	spec for: #common do: [
		spec package: 'VeritasBenchSuite'.
		spec package: 'Veritas-Cormas' with: [ spec requires: #( 'VeritasBenchSuite' ) ].

		"External dependencies"
		spec baseline: 'Cormas' with: [ spec repository: 'github://cormas/cormas:d90ab87b27f4a0cb71fbe4f74e9d8ece48d7871b' ].
		spec baseline: 'ECECModel' with: [ spec repository: 'github://cormas/ecec-model:4e53c37ad9972585447eabb8a675ed774760fb3c' ].

		spec package: 'Veritas-Cormas' with: [ spec requires: #( 'Cormas' 'ECECModel' ) ].
		spec group: 'Core' with: #( 'Veritas-Cormas' ) ]
]
