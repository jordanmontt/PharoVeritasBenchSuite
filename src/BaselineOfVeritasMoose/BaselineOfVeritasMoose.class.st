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
		
		spec group: 'Core' with: #( 'Veritas-Moose' ) ]
]
