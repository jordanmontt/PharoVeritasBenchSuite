Class {
	#name : 'BaselineOfAlSitExReMobidyc',
	#superclass : 'Object',
	#category : 'BaselineOfAlSitExReMobidyc',
	#package : 'BaselineOfAlSitExReMobidyc'
}

{ #category : 'baselines' }
BaselineOfAlSitExReMobidyc >> baseline: spec [

	<baseline>
	spec for: #common do: [
		spec package: 'ACEx-ReMobidyc'.

		"External dependencies"
		spec baseline: 'ReMobidyc'
			with: [ spec repository: 'github://ReMobidyc/ReMobidyc:main/src' ].

		"Linking external dependencies"
		spec package: 'ACEx-ReMobidyc' with: [ spec requires: #( 'ReMobidyc' ) ].

		"Groups"
		spec group: 'Core' with: #( 'ACEx-ReMobidyc' ) ]
]
