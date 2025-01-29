Class {
	#name : 'AbstractBaselineOfAlSitEx',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfAlSitExCormas',
	#package : 'BaselineOfAlSitExCormas'
}

{ #category : 'adding' }
AbstractBaselineOfAlSitEx >> addIllimaniDependencies: spec [

	spec
 		baseline: 'IllimaniProfiler'
		with: [ spec repository: 'github://jordanmontt/illimani-memory-profiler:dev' ].
	spec
 		baseline: 'SendersChainTransformer'
		with: [ spec repository: 'github://jordanmontt/senders-chain-transformer:main' ]
]

{ #category : 'adding' }
AbstractBaselineOfAlSitEx >> illimaniStringDependencies [

	^ #( 'IllimaniProfiler' 'SendersChainTransformer' )
]
