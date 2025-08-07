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
			spec package: 'Veritas-Rewriter'.

			spec group: 'Core' with: #( 'Veritas-Rewriter' ) ]
]
