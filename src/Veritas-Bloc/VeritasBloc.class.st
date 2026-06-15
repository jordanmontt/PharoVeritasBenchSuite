Class {
	#name : 'VeritasBloc',
	#superclass : 'VeritasBenchSuite',
	#instVars : [
		'numberOfFrames'
	],
	#category : 'Veritas-Bloc',
	#package : 'Veritas-Bloc'
}

{ #category : 'as yet unclassified' }
VeritasBloc class >> applicationPackages [

	^ self applicationPackagesNames collect: #asPackage
]

{ #category : 'as yet unclassified' }
VeritasBloc class >> applicationPackagesNames [

	^ #( #'Bloc-Display' #'Bloc-Alexandrie-Exporter'
	     #'Bloc-Rules' #'Bloc-Alexandrie' #'Bloc-Demo' #'Bloc-Scalable'
	     #'Bloc-Overlay-Examples' #'Bloc-Text-Rope' #'Bloc-Alexandrie-SVG'
	     #'BlocHost-Morphic' #'Bloc-Layout-Examples'
	     #'BlocBenchs-FPS' #'Bloc-SVG' #'BlocTutorials-Boids'
	     #'Bloc-Text-Examples' #'Bloc-FocusFinder-Examples'
	     #'Bloc-Examples' #'Bloc-Overlay' #'Bloc-CommandApplier'
	     #'Bloc-Text-Alexandrie-Examples'
	     #'Bloc-Layout-Resizer' #'Bloc-Scalable-Examples'
	     #'BlocHost-Mock' #'BlocHost-OSWindow' #'Bloc-FocusFinder'
	     #'Bloc-Spec2' #'BlocBenchs-Alexandrie' #'Bloc-PullAndSlide'
	     #'Bloc-Scripter' #'Bloc-Animation' #'BlocBenchs-Core'
	     #'Bloc-ColorPicker' #'Bloc-DragNDrop' #'Bloc-Infinite'
	     #'Bloc-LayoutZoomable' #'Bloc-DevTool' #'Bloc-Text' #'Bloc-PharoExtensions'
	     #'Bloc-Layout' #'BlocBenchs-Printing' #'BlocBenchs-Benchs'
	     #Bloc #'Bloc-Text-Elements' #'BlocBenchs-Old' )
]

{ #category : 'accessing' }
VeritasBloc class >> fileName [
   "Return a string"

   ^ 'bloc'
]

{ #category : 'initialization' }
VeritasBloc >> initialize [

	super initialize.
	numberOfFrames := 250
]

{ #category : 'accessing' }
VeritasBloc >> numberOfFrames: anInteger [

	numberOfFrames := anInteger
]

{ #category : 'api' }
VeritasBloc >> run [

	self runBoxWindmillBlocCase
]

{ #category : 'api' }
VeritasBloc >> runBoidsSkyCase [

	BlBBoidsSkyCase new
		element: BoidsUsingTriangleSkyElement new;
		runner: (BlBBlocBenchFrameRunner forFrames: numberOfFrames);
		runVeritas
]

{ #category : 'api' }
VeritasBloc >> runBoxWindmillBlocCase [

	BlBBoxWindmillBlocCase new
		runner: (BlBBlocBenchFrameRunner forFrames: numberOfFrames);
		runVeritas
]
