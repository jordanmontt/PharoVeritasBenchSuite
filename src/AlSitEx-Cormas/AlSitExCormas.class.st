Class {
	#name : 'AlSitExCormas',
	#superclass : 'Object',
	#category : 'AlSitEx-Cormas',
	#package : 'AlSitEx-Cormas'
}

{ #category : 'as yet unclassified' }
AlSitExCormas >> applicationClasses [

	^ (self applicationPackages collect: #asPackage) flatCollect: #definedClasses
]

{ #category : 'as yet unclassified' }
AlSitExCormas >> applicationPackages [

	^ #(#'Cormas-SensitivityAnalysis-UI-Tests' #'Cormas-UI-Tilesets' #'AlSitEx-Cormas' #'Cormas-Core' #BaselineOfCormas #BaselineOfECECModel #'Cormas-UI-Translator' #'ECEC-Model' #'Cormas-Tests' #'Cormas-UI-Roassal3' #BaselineOfAlSitExCormas #'Cormas-UI-Commands' #'ECEC-Model-Tests' #'Cormas-CodeGeneration' #'Cormas-UI-Tests' #'Cormas-SensitivityAnalysis' #'Cormas-SensitivityAnalysis-Tests' #'Cormas-SensitivityAnalysis-UI' #'Cormas-CodeGeneration-Tests' #'Cormas-UI' #'Cormas-Mocks')
]

{ #category : 'api' }
AlSitExCormas >> run [

	self runEcecModelFor: 10000
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
