Class {
	#name : 'BaselineOfVeritasMicrodown',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfVeritasMicrodown',
	#package : 'BaselineOfVeritasMicrodown'
}

{ #category : 'baselines' }
BaselineOfVeritasMicrodown >> baseline: spec [
	<baseline>
	
	spec for: #common do: [
		spec package: 'VeritasBenchSuite'.
		spec package: 'Veritas-Microdown' with: [ spec requires: #( 'VeritasBenchSuite' ) ].

		"External dependencies"
		spec baseline: 'Microdown' with: [ spec repository: 'github://pillar-markup/Microdown:dev' ].
		spec package: 'Veritas-Microdown' with: [ spec requires: #( 'Microdown' ) ].
		
		spec group: 'Core' with: #( 'Veritas-Microdown' ) ]
]
