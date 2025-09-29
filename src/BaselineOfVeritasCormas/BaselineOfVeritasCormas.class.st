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
		spec baseline: 'Cormas' with: [ spec repository: 'github://cormas/cormas:59d4ab6b64e87ec82255561f35ec3571b8cb2195' ].
		spec baseline: 'ECECModel' with: [ spec repository: 'github://cormas/ecec-model:4e53c37ad9972585447eabb8a675ed774760fb3c' ].

		spec package: 'Veritas-Cormas' with: [ spec requires: #( 'Cormas' 'ECECModel' ) ].
		spec group: 'Core' with: #( 'Veritas-Cormas' ) ]
]
