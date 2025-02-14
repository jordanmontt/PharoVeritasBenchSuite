Class {
	#name : 'BaselineOfAlSitExMoose',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfAlSitExMoose',
	#package : 'BaselineOfAlSitExMoose'
}

{ #category : 'baselines' }
BaselineOfAlSitExMoose >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		spec package: 'AlSitEx-Moose'.

		spec
 			baseline: 'IllimaniProfiler'
			with: [ spec repository: 'github://jordanmontt/illimani-memory-profiler:dev' ].
		spec
 			baseline: 'SendersChainTransformer'
			with: [ spec repository: 'github://jordanmontt/senders-chain-transformer:main' ].

		spec package: 'AlSitEx-Moose' with: [ spec requires: #( 'IllimaniProfiler' 'SendersChainTransformer' ) ].

		spec group: 'Core' with: #( 'AlSitEx-Moose' ) ]
]
