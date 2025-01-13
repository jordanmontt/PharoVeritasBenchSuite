Class {
	#name : 'BaselineOfAlSitExCormas',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfAlSitExCormas',
	#package : 'BaselineOfAlSitExCormas'
}

{ #category : 'baselines' }
BaselineOfAlSitExCormas >> baseline: spec [
	<baseline>

	spec for: #'common' do: [
		spec package: 'AlSitEx-Cormas'.

		"External dependencies"
		spec
 			baseline: 'Cormas'
			with: [ spec repository: 'github://cormas/cormas:59d4ab6b64e87ec82255561f35ec3571b8cb2195' ].
		spec
 			baseline: 'ECECModel'
			with: [ spec repository: 'github://cormas/ecec-model:main' ].
			
		"Illimani"
		spec
 			baseline: 'IllimaniProfiler'
			with: [ spec repository: 'github://jordanmontt/illimani-memory-profiler:dev' ].
		spec
 			baseline: 'SendersChainTransformer'
			with: [ spec repository: 'github://jordanmontt/senders-chain-transformer:main' ].

		"Packages"
		spec package: 'AlSitEx-Cormas'
			with: [ spec requires: #( 'Cormas' 'ECECModel' 'IllimaniProfiler' 'SendersChainTransformer' ) ].

		"Groups"
		spec group: 'Core' with: #( 'AlSitEx-Cormas' ) ]
]
