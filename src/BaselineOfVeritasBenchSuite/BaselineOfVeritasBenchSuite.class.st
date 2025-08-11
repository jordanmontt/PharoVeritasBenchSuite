Class {
	#name : 'BaselineOfVeritasBenchSuite',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfVeritasBenchSuite',
	#package : 'BaselineOfVeritasBenchSuite'
}

{ #category : 'baselines' }
BaselineOfVeritasBenchSuite >> baseline: spec [

	<baseline>
	spec for: #common do: [
			spec package: 'VeritasBenchSuite'.
			spec group: 'Core' with: #( 'VeritasBenchSuite' ) ]
]
