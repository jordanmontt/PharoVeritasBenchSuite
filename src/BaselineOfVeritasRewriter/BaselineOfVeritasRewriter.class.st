Class {
	#name : 'BaselineOfVeritasRewriter',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfVeritasRewriter',
	#package : 'BaselineOfVeritasRewriter'
}

{ #category : 'baselines' }
BaselineOfVeritasRewriter >> baseline: spec [

	<baseline>
	spec for: #common do: [
		spec package: 'VeritasBenchSuite'.
		spec package: 'Veritas-Rewriter' with: [ spec requires: #( 'VeritasBenchSuite' ) ].

			spec group: 'Core' with: #( 'Veritas-Rewriter' ) ]
]
