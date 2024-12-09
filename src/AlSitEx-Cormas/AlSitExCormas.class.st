Class {
	#name : 'AlSitExCormas',
	#superclass : 'Object',
	#category : 'AlSitEx-Cormas',
	#package : 'AlSitEx-Cormas'
}

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
