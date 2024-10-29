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
			with: [ spec repository: 'github://cormas/cormas' ].
		spec
 			baseline: 'ECECModel'
			with: [ spec repository: 'github://cormas/ecec-model:main' ].

		"Packages"
		spec package: 'AlSitEx-Cormas'
			with: [ spec requires: #('Cormas') ].

		"Groups"
		spec group: 'Core' with: #( 'AlSitEx-Cormas' ) ]
]
