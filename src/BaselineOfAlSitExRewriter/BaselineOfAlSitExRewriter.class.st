Class {
	#name : 'BaselineOfAlSitExRewriter',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfAlSitExRewriter',
	#package : 'BaselineOfAlSitExRewriter'
}

{ #category : 'baselines' }
BaselineOfAlSitExRewriter >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		spec package: 'AlSitEx-Rewriter'.

		spec
 			baseline: 'IllimaniProfiler'
			with: [ spec repository: 'github://jordanmontt/illimani-memory-profiler:dev' ].
		spec
 			baseline: 'SendersChainTransformer'
			with: [ spec repository: 'github://jordanmontt/senders-chain-transformer:main' ].

		spec package: 'AlSitEx-Rewriter' with: [ spec requires: #( 'IllimaniProfiler' 'SendersChainTransformer' ) ].

		spec group: 'Core' with: #( 'AlSitEx-Rewriter' ) ]
]
