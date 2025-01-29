Class {
	#name : 'BaselineOfAlSitExCormas',
	#superclass : 'AbstractBaselineOfAlSitEx',
	#category : 'BaselineOfAlSitExCormas',
	#package : 'BaselineOfAlSitExCormas'
}

{ #category : 'baselines' }
BaselineOfAlSitExCormas >> baseline: spec [

	<baseline>
	spec for: #common do: [
		spec package: 'AlSitEx-Cormas'.
		
		self addIllimaniDependencies: spec.
		
		"External dependencies"
		spec baseline: 'Cormas' with: [ spec repository: 'github://cormas/cormas:59d4ab6b64e87ec82255561f35ec3571b8cb2195' ].
		spec baseline: 'ECECModel' with: [ spec repository: 'github://cormas/ecec-model:main' ].

		spec package: 'AlSitEx-Cormas' with: [ spec requires: #( 'Cormas' 'ECECModel' ) , self illimaniStringDependencies ].
		spec group: 'Core' with: #( 'AlSitEx-Cormas' ) ]
]
