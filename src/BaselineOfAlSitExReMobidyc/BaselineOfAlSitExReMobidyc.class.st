Class {
	#name : 'BaselineOfAlSitExReMobidyc',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfAlSitExReMobidyc',
	#package : 'BaselineOfAlSitExReMobidyc'
}

{ #category : 'adding' }
BaselineOfAlSitExReMobidyc >> addIllimaniDependencies: spec [

	spec
 		baseline: 'IllimaniProfiler'
		with: [ spec repository: 'github://jordanmontt/illimani-memory-profiler:dev' ].
	spec
 		baseline: 'SendersChainTransformer'
		with: [ spec repository: 'github://jordanmontt/senders-chain-transformer:main' ]
]

{ #category : 'baselines' }
BaselineOfAlSitExReMobidyc >> baseline: spec [

	<baseline>
	spec for: #common do: [
		spec package: 'ACEx-ReMobidyc'.

		self addIllimaniDependencies: spec.
		
		"External dependencies"
		spec baseline: 'ReMobidyc'
			with: [ spec repository: 'github://ReMobidyc/ReMobidyc:main/src' ].

		"Linking"
		spec package: 'ACEx-ReMobidyc' with: [ 
			spec requires: #( 'ReMobidyc' 'IllimaniProfiler' 'SendersChainTransformer') ].

		"Groups"
		spec group: 'Core' with: #( 'ACEx-ReMobidyc' ) ]
]
