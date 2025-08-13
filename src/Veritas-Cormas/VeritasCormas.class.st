Class {
	#name : 'VeritasCormas',
	#superclass : 'VeritasBenchSuite',
	#category : 'Veritas-Cormas',
	#package : 'Veritas-Cormas'
}

{ #category : 'as yet unclassified' }
VeritasCormas class >> applicationPackages [

	^ #( #'Cormas-UI-Tilesets' #'Cormas-Core' #'Cormas-UI-Translator' #'ECEC-Model' #'Cormas-UI-Roassal3'
	     #'Cormas-UI-Commands' #'Cormas-CodeGeneration' #'Cormas-SensitivityAnalysis' #'Cormas-SensitivityAnalysis-UI'
	     #'Cormas-UI' #'Cormas-Mocks' ) collect: #asPackage
]

{ #category : 'api' }
VeritasCormas >> run [

	self runEcecModelFor: 200000
]

{ #category : 'as yet unclassified' }
VeritasCormas >> runEcecModelFor: durationSteps [

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
