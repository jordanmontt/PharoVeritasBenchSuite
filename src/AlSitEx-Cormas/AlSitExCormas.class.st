Class {
	#name : 'AlSitExCormas',
	#superclass : 'Object',
	#category : 'AlSitEx-Cormas',
	#package : 'AlSitEx-Cormas'
}

{ #category : 'as yet unclassified' }
AlSitExCormas class >> applicationClasses [

	^ self applicationPackages flatCollect: #definedClasses
]

{ #category : 'as yet unclassified' }
AlSitExCormas class >> applicationPackages [

	^ #( #'Cormas-UI-Tilesets' #'Cormas-Core' #'Cormas-UI-Translator' #'ECEC-Model' #'Cormas-UI-Roassal3'
	     #'Cormas-UI-Commands' #'Cormas-CodeGeneration' #'Cormas-SensitivityAnalysis' #'Cormas-SensitivityAnalysis-UI'
	     #'Cormas-UI' #'Cormas-Mocks' ) collect: #asPackage
]

{ #category : 'as yet unclassified' }
AlSitExCormas >> applicationClasses [

	^ self class applicationClasses
]

{ #category : 'as yet unclassified' }
AlSitExCormas >> applicationPackages [

	^ self class applicationPackages
]

{ #category : 'api' }
AlSitExCormas >> run [

	self runEcecModelFor: 200000
]

{ #category : 'as yet unclassified' }
AlSitExCormas >> runEcecModelFor: durationSteps [

	| simulation |
	simulation := (CMSimulation for: ECECModel)
		activeInitSelector: #homogeneousEnvironment;
		finalTimeStep: durationSteps;
		activeControlSelector: #step:;
		initializeSimulation;
		yourself.
	simulation runAllSteps.
	^ simulation
	"simulation runAllStepsAfterEachDo: [
		Transcript
			show: 'Simulation step ';
			show: simulation currentTimeStep asString;
			cr ].
	Transcript show: simulation data last; cr"
]
