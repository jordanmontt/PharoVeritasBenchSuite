Class {
	#name : 'BaselineOfVeritasMoose',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfVeritasMoose',
	#package : 'BaselineOfVeritasMoose'
}

{ #category : 'baselines' }
BaselineOfVeritasMoose >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		spec package: 'VeritasBenchSuite'.
		spec package: 'Veritas-Moose' with: [ spec requires: #( 'VeritasBenchSuite' ) ].
		
		"External dependencies"
		spec baseline: 'Moose' with: [ spec repository: 'github://moosetechnology/Moose:835cc27301188ed91f7eb1ba8628758910a2dd1c' ].

		spec package: 'Veritas-Moose' with: [ spec requires: #( 'Moose' ) ].
		
		spec group: 'Core' with: #( 'Veritas-Moose' ) ]
]
