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
		spec package: 'ACEx-HoneyGinger'.
		
		"External dependencies"
		spec baseline: 'HoneyGinger'
			with: [ spec repository: 'github://tomooda/HoneyGinger:main' ].
		
		"Linking external dependencies"
		spec package: 'ACEx-HoneyGinger'
			with: [ spec requires: #('HoneyGinger') ].
		
		"Groups"
		spec group: 'Core' with: #( 'ACEx-HoneyGinger' ) ]
]
