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
		spec package: 'Veritas-Moose'.
		
		spec group: 'Core' with: #( 'Veritas-Moose' ) ]
]
