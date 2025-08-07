Class {
	#name : 'BaselineOfVeritasReMobidyc',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfVeritasReMobidyc',
	#package : 'BaselineOfVeritasReMobidyc'
}

{ #category : 'adding' }
BaselineOfVeritasReMobidyc >> addIllimaniDependencies: spec [

	spec
 		baseline: 'IllimaniProfiler'
		with: [ spec repository: 'github://jordanmontt/illimani-memory-profiler:dev' ].
	spec
 		baseline: 'SendersChainTransformer'
		with: [ spec repository: 'github://jordanmontt/senders-chain-transformer:main' ]
]

{ #category : 'baselines' }
BaselineOfVeritasReMobidyc >> baseline: spec [

	<baseline>
	spec for: #common do: [
		spec package: 'AlSitEx-ReMobidyc'.
		
		"External dependencies"
		spec baseline: 'ReMobidyc' with: [ spec repository: 'github://jordanmontt/ReMobidyc:main' ].

		"Groups"
		spec group: 'Core' with: #( 'AlSitEx-ReMobidyc' ) ]
]
