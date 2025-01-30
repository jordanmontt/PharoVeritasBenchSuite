Class {
	#name : 'BaselineOfAlSitExDataFrame',
	#superclass : 'AbstractBaselineOfAlSitEx',
	#category : 'BaselineOfAlSitExDataFrame',
	#package : 'BaselineOfAlSitExDataFrame'
}

{ #category : 'baselines' }
BaselineOfAlSitExDataFrame >> addIllimaniDependencies: spec [

	spec
 		baseline: 'IllimaniProfiler'
		with: [ spec repository: 'github://jordanmontt/illimani-memory-profiler:dev' ].
	spec
 		baseline: 'SendersChainTransformer'
		with: [ spec repository: 'github://jordanmontt/senders-chain-transformer:main' ]
]

{ #category : 'baselines' }
BaselineOfAlSitExDataFrame >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		spec package: 'AlSitEx-DataFrame'.
		
		self addIllimaniDependencies: spec.

		"External dependencies"
		spec baseline: 'DataFrame' with: [ spec repository: 'github://PolyMathOrg/DataFrame/src' ].

		spec package: 'AlSitEx-DataFrame' with: [ spec requires: #('DataFrame') , self illimaniStringDependencies ].

		spec group: 'Core' with: #( 'AlSitEx-DataFrame' ) ]
]

{ #category : 'baselines' }
BaselineOfAlSitExDataFrame >> illimaniStringDependencies [

	^ #( 'IllimaniProfiler' 'SendersChainTransformer' )
]
