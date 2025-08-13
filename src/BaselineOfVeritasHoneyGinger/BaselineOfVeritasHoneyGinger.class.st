Class {
	#name : 'BaselineOfVeritasHoneyGinger',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfVeritasHoneyGinger-Core',
	#package : 'BaselineOfVeritasHoneyGinger',
	#tag : 'Core'
}

{ #category : 'baselines' }
BaselineOfVeritasHoneyGinger >> baseline: spec [
	<baseline>
	
	spec for: #'common' do: [
		spec package: 'VeritasBenchSuite'.
		spec package: 'Veritas-HoneyGinger' with: [ spec requires: #( 'VeritasBenchSuite' ) ].
		
		"External dependencies"
		spec baseline: 'HoneyGinger'
			with: [ spec repository: 'github://tomooda/HoneyGinger:main' ].
		spec package: 'Veritas-HoneyGinger' with: [ spec requires: #('HoneyGinger') ].
		
		"Groups"
		spec group: 'Core' with: #( 'Veritas-HoneyGinger' ) ]
]
