Class {
	#name : 'BaselineOfVeritasRegis',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfVeritasRegis',
	#package : 'BaselineOfVeritasRegis'
}

{ #category : 'baselines' }
BaselineOfVeritasRegis >> baseline: spec [

	<baseline>

	spec for: #common do: [
		spec package: 'Veritas-Regis'.
		
		"External dependencies"
		spec baseline: 'ESUGApp' with: [ spec repository: 'github://jordanmontt/Regis:master' ].
		spec package: 'Veritas-Regis' with: [ spec requires: #('ESUGApp') ].

		"Groups"
		spec group: 'Core' with: #( 'Veritas-Regis' ) ]
]
