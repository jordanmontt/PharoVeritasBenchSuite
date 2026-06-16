Class {
	#name : 'VeritasBlocHostSpace',
	#superclass : 'BlHeadlessHostSpace',
	#instVars : [
		'surface',
		'logicalSize',
		'physicalSize'
	],
	#category : 'Veritas-Bloc',
	#package : 'Veritas-Bloc'
}

{ #category : 'accessing' }
VeritasBlocHostSpace >> center [
	"nothing to do"


]

{ #category : 'initialization' }
VeritasBlocHostSpace >> initialize [ 
	
	super initialize.
	self windowExtent: 300@300.
]

{ #category : 'host space - testing' }
VeritasBlocHostSpace >> isVisible [ 

	^ true.
]

{ #category : 'rendering' }
VeritasBlocHostSpace >> lockSurfaceFor: logicalDamagedRectangle scaleFactor: scaleFactor during: aBlock [ 

	| physicalDamagedRectangle damagedSurface |

	physicalDamagedRectangle := logicalDamagedRectangle intersect: (0@0 corner: self logicalSize asPoint) ifNone: [ ^ self ].
	physicalDamagedRectangle := physicalDamagedRectangle scaleBy: scaleFactor.
	
	damagedSurface := AeCairoImageSurface extent: physicalDamagedRectangle extent.
	
	renderer
		renderWith: aBlock
		pixels: damagedSurface data
		stride: damagedSurface stride
		physicalRectangle: physicalDamagedRectangle
		logicalRectangle: logicalDamagedRectangle.

	damagedSurface markDirty.
	damagedSurface deviceScaleX: 1.0 y: 1.0. 

	surface newContextDo: [:aCairoContext | 
		aCairoContext sourceSurface: damagedSurface x: physicalDamagedRectangle origin x y: physicalDamagedRectangle origin y. 
		aCairoContext setOperatorSource.
		aCairoContext rectangle: physicalDamagedRectangle.
		aCairoContext fill].
]

{ #category : 'host space - geometry' }
VeritasBlocHostSpace >> logicalSize [

	^ logicalSize 
]

{ #category : 'host space - geometry' }
VeritasBlocHostSpace >> physicalSize [

	^ physicalSize 
]

{ #category : 'host space - drawing' }
VeritasBlocHostSpace >> render: aSpace [

	self renderer render: self
]

{ #category : 'accessing' }
VeritasBlocHostSpace >> surface [
	^ surface
]

{ #category : 'host space - geometry' }
VeritasBlocHostSpace >> windowExtent: anExtent [

	logicalSize := BlLogicalDisplaySize fromPoint: anExtent.
	physicalSize := logicalSize asPhysical: 2.
	
	surface := AeCairoImageSurface extent: physicalSize asPoint.
]
