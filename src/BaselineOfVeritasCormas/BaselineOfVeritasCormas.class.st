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
		spec package: 'Veritas-Cormas'.

		"External dependencies"
		spec baseline: 'Cormas' with: [ spec repository: 'github://cormas/cormas:59d4ab6b64e87ec82255561f35ec3571b8cb2195' ].
		spec baseline: 'ECECModel' with: [ spec repository: 'github://cormas/ecec-model:main' ].

		spec package: 'Veritas-Cormas' with: [ spec requires: #( 'Cormas' 'ECECModel' ) ].
		spec group: 'Core' with: #( 'Veritas-Cormas' ) ]
]
